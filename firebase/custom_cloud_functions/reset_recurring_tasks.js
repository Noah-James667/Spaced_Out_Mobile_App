const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code
const db = admin.firestore();

// Cloud Function triggered every midnight (UTC time by default)
exports.resetRecurringTasks = functions.pubsub
  .schedule("every day 00:00")
  .timeZone("America/Chicago") // Change to your desired time zone
  .onRun(async (context) => {
    const today = new Date();
    const todayDayName = today.toLocaleString("en-US", { weekday: "long" }); // Get current day name (e.g., "Monday")
    const completeByDate = `${today.getMonth() + 1}/${today.getDate()}`; // Format as M/d (e.g., "3/17")

    try {
      const tasksRef = db.collection("task");
      const snapshot = await tasksRef.where("is_repeating", "==", true).get();

      if (snapshot.empty) {
        console.log("No recurring tasks found.");
        return null;
      }

      const batch = db.batch();

      snapshot.forEach((doc) => {
        const taskData = doc.data();
        const daysRepeating = taskData.days_repeating || [];

        if (daysRepeating.includes(todayDayName)) {
          batch.update(doc.ref, {
            is_complete: false,
            complete_by: completeByDate,
          });
        }
      });

      await batch.commit();
      console.log("Recurring tasks reset successfully.");
    } catch (error) {
      console.error("Error resetting recurring tasks:", error);
    }

    return null;
  });
