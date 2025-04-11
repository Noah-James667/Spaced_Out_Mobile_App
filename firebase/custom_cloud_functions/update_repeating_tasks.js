const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code
exports.updateRepeatingTasks = functions.pubsub
  .schedule("0 0 * * 0") // Every Sunday at 12:00 AM
  .timeZone("America/Chicago") // Set your desired timezone
  .onRun(async (context) => {
    const db = admin.firestore();
    const tasksRef = db.collection("tasks");

    const snapshot = await tasksRef.where("is_repeating", "==", true).get();

    if (snapshot.empty) {
      console.log("No repeating tasks found.");
      return null;
    }

    const batch = db.batch();

    snapshot.forEach((doc) => {
      const data = doc.data();
      const oldDates = data.complete_date_list || [];

      const newDates = oldDates.map((timestamp) => {
        const date = timestamp.toDate(); // Convert Firestore Timestamp to JS Date
        const newDate = new Date(date);
        newDate.setDate(date.getDate() + 7); // Add 7 days
        return admin.firestore.Timestamp.fromDate(newDate);
      });

      batch.update(doc.ref, { complete_date_list: newDates });
    });

    await batch.commit();
    console.log("Repeating tasks updated successfully.");
    return null;
  });
