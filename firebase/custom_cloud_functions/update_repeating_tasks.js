const functions = require("firebase-functions");
const admin = require("firebase-admin");
exports.updateRepeatingTasks = functions.pubsub
  .schedule("0 0 * * 0") // Every Sunday at 12:00 AM
  .timeZone("America/Chicago") // Use your local timezone
  .onRun(async (context) => {
    const db = admin.firestore();
    const taskRef = db.collection("task"); // ✅ singular

    const snapshot = await taskRef.where("is_repeating", "==", true).get();

    if (snapshot.empty) {
      console.log("No repeating tasks found.");
      return null;
    }

    const batch = db.batch();

    snapshot.forEach((doc) => {
      const data = doc.data();
      const oldDates = data.complete_date_list || [];

      if (!Array.isArray(oldDates)) {
        console.warn(`Task ${doc.id} has invalid complete_date_list`);
        return;
      }

      const newDates = oldDates.map((timestamp) => {
        try {
          const date = timestamp.toDate(); // Ensure this is a Firestore Timestamp
          const newDate = new Date(date);
          newDate.setDate(newDate.getDate() + 7);
          return admin.firestore.Timestamp.fromDate(newDate);
        } catch (error) {
          console.error(`Failed to process a date in task ${doc.id}:`, error);
          return timestamp;
        }
      });

      batch.update(doc.ref, {
        complete_date_list: newDates,
      });
    });

    await batch.commit();
    console.log("Updated repeating tasks successfully.");
    return null;
  });
