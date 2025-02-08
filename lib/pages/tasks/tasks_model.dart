import '/components/task_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tasks_widget.dart' show TasksWidget;
import 'package:flutter/material.dart';

class TasksModel extends FlutterFlowModel<TasksWidget> {
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
