import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/game_page/health_upgrade_display/health_upgrade_display_widget.dart';
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

  // Model for healthUpgradeDisplay component.
  late HealthUpgradeDisplayModel healthUpgradeDisplayModel;

  @override
  void initState(BuildContext context) {
    healthUpgradeDisplayModel =
        createModel(context, () => HealthUpgradeDisplayModel());
  }

  @override
  void dispose() {
    healthUpgradeDisplayModel.dispose();
  }
}
