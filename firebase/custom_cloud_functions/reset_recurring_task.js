const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code
exports.resetRecurringTask = functions.pubsub
  .schedule("0 0 * * *") // Midnight daily
  .timeZone("America/Chicago") // Adjust to your local timezone
  .onRun(async (context) => {
    const db = admin.firestore();
    const taskRef = db.collection("task");
    const snapshot = await taskRef.where("is_repeating", "==", true).get();

    if (snapshot.empty) {
      console.log("No repeating tasks found.");
      return null;
    }

    const now = admin.firestore.Timestamp.now().toDate();
    const todayName = now.toLocaleDateString("en-US", { weekday: "long" });

    const batch = db.batch();

    snapshot.forEach((doc) => {
      const task = doc.data();

      if (!task.days_repeating) return;

      const daysList = task.days_repeating.split(",").map((day) => day.trim());

      if (!daysList.includes(todayName)) return;

      // Preserve previous time from complete_by
      const previousCompleteBy = task.complete_by.toDate();
      const newCompleteBy = new Date(
        now.getFullYear(),
        now.getMonth(),
        now.getDate(),
        previousCompleteBy.getHours(),
        previousCompleteBy.getMinutes(),
      );

      const newCompleteDate = new Date(
        now.getFullYear(),
        now.getMonth(),
        now.getDate(),
        0,
        0,
      );

      batch.update(doc.ref, {
        is_complete: false,
        complete_by: admin.firestore.Timestamp.fromDate(newCompleteBy),
        complete_date: admin.firestore.Timestamp.fromDate(newCompleteDate),
      });

      console.log(`Reset task ${doc.id} for ${todayName}.`);
    });

    await batch.commit();
    return null;
  });
