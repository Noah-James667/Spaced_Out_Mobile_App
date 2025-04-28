import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/alien/alien_widget.dart';
import '/components/astronaut/astronaut_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'game_page_widget.dart' show GamePageWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
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

  /// Determines the opacity of the Gif
  double fistForwardGifOpacity = 1.0;

  /// Controls the opcaity of the still arm picture.
  double? stillArmPicOpacity = 0.0;

  /// Controls the opacity of the gif
  double? fistBackwardGifOpacity = 0.0;

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? gamePageWalkthroughController;
  // Model for alien component.
  late AlienModel alienModel;
  // Model for astronaut component.
  late AstronautModel astronautModel;

  @override
  void initState(BuildContext context) {
    alienModel = createModel(context, () => AlienModel());
    astronautModel = createModel(context, () => AstronautModel());
  }

  @override
  void dispose() {
    gamePageWalkthroughController?.finish();
    alienModel.dispose();
    astronautModel.dispose();
  }
}
