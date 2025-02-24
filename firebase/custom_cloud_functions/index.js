const admin = require("firebase-admin/app");
admin.initializeApp();

const resetRecurringTasks = require("./reset_recurring_tasks.js");
exports.resetRecurringTasks = resetRecurringTasks.resetRecurringTasks;
