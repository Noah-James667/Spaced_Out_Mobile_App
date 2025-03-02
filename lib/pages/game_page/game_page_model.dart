import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'game_page_widget.dart' show GamePageWidget;
import 'package:flutter/material.dart';

class GamePageModel extends FlutterFlowModel<GamePageWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
