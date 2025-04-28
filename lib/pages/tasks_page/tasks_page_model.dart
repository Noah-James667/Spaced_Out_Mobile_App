import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'tasks_page_widget.dart' show TasksPageWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class TasksPageModel extends FlutterFlowModel<TasksPageWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? tasksPagesWalkthroughController;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tasksPagesWalkthroughController?.finish();
    tabBarController?.dispose();
  }
}
