import '/components/upgrade/upgrade_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'game_page_widget.dart' show GamePageWidget;
import 'package:flutter/material.dart';

class GamePageModel extends FlutterFlowModel<GamePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for upgrade component.
  late UpgradeModel upgradeModel;

  @override
  void initState(BuildContext context) {
    upgradeModel = createModel(context, () => UpgradeModel());
  }

  @override
  void dispose() {
    upgradeModel.dispose();
  }
}
