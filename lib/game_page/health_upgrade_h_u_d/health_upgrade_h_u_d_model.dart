import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/index.dart';
import 'health_upgrade_h_u_d_widget.dart' show HealthUpgradeHUDWidget;
import 'package:flutter/material.dart';

class HealthUpgradeHUDModel extends FlutterFlowModel<HealthUpgradeHUDWidget> {
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  /// This will take the page state variables from the gamePage and allow this
  /// component to update players health.
  Future<double?> upgradePlayerHlth(
    BuildContext context, {
    /// This is the players health from the page state
    double? playerHlth,
  }) async {
    if ((valueOrDefault(currentUserDocument?.xp, 0.0) > 0.0) &&
        (valueOrDefault(currentUserDocument?.xp, 0.0) >=
            valueOrDefault(currentUserDocument?.damageUpCost, 0).toDouble())) {
      logFirebaseEvent('upgradePlayerHlth_backend_call');

      await currentUserReference!.update(createUserRecordData(
        xp: valueOrDefault(currentUserDocument?.xp, 0.0) -
            FFAppState().appUpgrade.uHlthCost,
      ));
      logFirebaseEvent('upgradePlayerHlth_widget_animation');
      unawaited(
        () async {}(),
      );
      logFirebaseEvent('upgradePlayerHlth_update_app_state');
      FFAppState().updateAppUpgradeStruct(
        (e) => e
          ..uHlthCost = FFAppState().appUpgrade.uHlthCost +
              (3 * (FFAppState().appUpgrade.uHlthLvl - 1))
          ..uHlthLvl = FFAppState().appUpgrade.uHlthLvl + 1,
      );
      FFAppState().updateAppPlayerStruct(
        (e) => e
          ..pHealth = FFAppState().appPlayer.pHealth +
              (3 * (FFAppState().appUpgrade.uHlthLvl - 1)),
      );
    } else {
      logFirebaseEvent('upgradePlayerHlth_alert_dialog');
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('!'),
            content: Text('Not enough xp!'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
      return widget!.playerHlth;
    }

    logFirebaseEvent('upgradePlayerHlth_navigate_to');

    context.goNamed(
      GamePageWidget.routeName,
      extra: <String, dynamic>{
        kTransitionInfoKey: TransitionInfo(
          hasTransition: true,
          transitionType: PageTransitionType.fade,
          duration: Duration(milliseconds: 0),
        ),
      },
    );

    return null;
  }
}
