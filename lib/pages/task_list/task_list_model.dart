import '/components/task_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'task_list_widget.dart' show TaskListWidget;
import 'package:flutter/material.dart';

class TaskListModel extends FlutterFlowModel<TaskListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for task component.
  late TaskModel taskModel;

  @override
  void initState(BuildContext context) {
    taskModel = createModel(context, () => TaskModel());
  }

  @override
  void dispose() {
    taskModel.dispose();
  }
}
