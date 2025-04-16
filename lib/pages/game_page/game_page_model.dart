import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/astronaut/astronaut_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'game_page_widget.dart' show GamePageWidget;
import 'package:flutter/material.dart';

class GamePageModel extends FlutterFlowModel<GamePageWidget> {
  ///  Local state fields for this page.

  EnemyStruct? pageEnemy;
  void updatePageEnemyStruct(Function(EnemyStruct) updateFn) {
    updateFn(pageEnemy ??= EnemyStruct());
  }

  PlayerStruct? pagePlayer;
  void updatePagePlayerStruct(Function(PlayerStruct) updateFn) {
    updateFn(pagePlayer ??= PlayerStruct());
  }

  bool gameRunning = false;

  bool playerWins = false;

  ///  State fields for stateful widgets in this page.

  // Model for astronaut component.
  late AstronautModel astronautModel;

  @override
  void initState(BuildContext context) {
    astronautModel = createModel(context, () => AstronautModel());
  }

  @override
  void dispose() {
    astronautModel.dispose();
  }
}
