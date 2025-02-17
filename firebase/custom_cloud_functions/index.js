const admin = require("firebase-admin/app");
admin.initializeApp();

const resetCompletedTasks = require("./reset_completed_tasks.js");
exports.resetCompletedTasks = resetCompletedTasks.resetCompletedTasks;
