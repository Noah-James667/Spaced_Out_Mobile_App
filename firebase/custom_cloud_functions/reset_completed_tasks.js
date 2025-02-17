const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code
exports.resetCompletedTasks = functions.pubsub
  .schedule("every Monday 00:00")
  .timeZone("America/New_York") // Set your time zone
  .onRun(async (context) => {
    const tasksRef = admin.firestore().collection("tasks");
    const snapshot = await tasksRef.where("is_recurring", "==", true).get();

    const batch = admin.firestore().batch();
    snapshot.forEach((doc) => {
      batch.update(doc.ref, { completed: false });
    });

    await batch.commit();
    console.log("Weekly task reset completed.");
  });
