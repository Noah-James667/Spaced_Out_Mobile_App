const functions = require("firebase-functions");
const admin = require("firebase-admin");

exports.resetRecurringTask = functions.pubsub
  .schedule("0 0 * * *") // Run daily at midnight
  .timeZone("America/Chicago")
  .onRun(async (context) => {
    const db = admin.firestore();
    const taskRef = db.collection("task");
    const snapshot = await taskRef.where("is_repeating", "==", true).get();

    if (snapshot.empty) {
      console.log("No repeating tasks found.");
      return null;
    }

    // Get current date in central timezone (no time component)
    const now = new Date(
      new Date().toLocaleString("en-US", { timeZone: "America/Chicago" }),
    );
    const todayYMD = now.toISOString().split("T")[0]; // "YYYY-MM-DD"

    const batch = db.batch();

    snapshot.forEach((doc) => {
      const task = doc.data();

      if (!Array.isArray(task.complete_date_list)) return;

      // Match today to any date in complete_date_list (by year, month, day)
      const match = task.complete_date_list.some((date) => {
        try {
          const compareDate = date.toDate ? date.toDate() : new Date(date);
          const compareYMD = compareDate.toISOString().split("T")[0];
          return compareYMD === todayYMD;
        } catch (e) {
          console.warn(`Invalid date in complete_date_list for task ${doc.id}`);
          return false;
        }
      });

      if (!match) {
        console.log(`Task ${doc.id} skipped — no date match.`);
        return;
      }

      if (!task.complete_by || !task.complete_by.toDate) {
        console.warn(`Task ${doc.id} has invalid complete_by`);
        return;
      }

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

      console.log(`Reset task ${doc.id} for ${todayYMD}.`);
    });

    await batch.commit();
    return null;
  });
