const admin = require("firebase-admin/app");
admin.initializeApp();

const resetRecurringTask = require("./reset_recurring_task.js");
exports.resetRecurringTask = resetRecurringTask.resetRecurringTask;
const updateRepeatingTasks = require("./update_repeating_tasks.js");
exports.updateRepeatingTasks = updateRepeatingTasks.updateRepeatingTasks;
