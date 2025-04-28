import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'health_upgrade_h_u_d_model.dart';
export 'health_upgrade_h_u_d_model.dart';

class HealthUpgradeHUDWidget extends StatefulWidget {
  const HealthUpgradeHUDWidget({
    super.key,
    this.xpCost,
    this.playerHlth,
    required this.txt,
  });

  /// cost of the upgrade
  final double? xpCost;

  final double? playerHlth;
  final String? txt;

  @override
  State<HealthUpgradeHUDWidget> createState() => _HealthUpgradeHUDWidgetState();
}

class _HealthUpgradeHUDWidgetState extends State<HealthUpgradeHUDWidget> {
  late HealthUpgradeHUDModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HealthUpgradeHUDModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('HEALTH_UPGRADE_H_U_D_healthUpgradeHUD_ON');
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xE457636C),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(8.0),
        ),
        border: Border.all(
          color: Color(0xFF310A0D),
          width: 4.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF310076),
                borderRadius: BorderRadius.circular(0.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).black,
                  width: 6.0,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.txt,
                    'txt',
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: FlutterFlowTheme.of(context).bodyLarge,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Text(
                'Upgrade costs:',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: FlutterFlowTheme.of(context).bodyMedium,
                      color: Color(0xFF310076),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'XP:',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: FlutterFlowTheme.of(context).bodyMedium,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    FFAppState().appUpgrade.uHlthCost.toString(),
                    '0',
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: FlutterFlowTheme.of(context).bodyMedium,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(SizedBox(width: 6.0)),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('HEALTH_UPGRADE_H_U_D_CLOSE_BTN_ON_TAP');
                  logFirebaseEvent('Button_bottom_sheet');
                  Navigator.pop(context);
                  logFirebaseEvent('Button_navigate_to');

                  context.pushNamed(
                    GamePageWidget.routeName,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
                text: 'Close',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF1E6AB2),
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: FlutterFlowTheme.of(context).bodyLarge,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('HEALTH_UPGRADE_H_U_D_UPGRADE_BTN_ON_TAP');
                  if ((valueOrDefault(currentUserDocument?.xp, 0.0) > 0.0) &&
                      (valueOrDefault(currentUserDocument?.xp, 0.0) >=
                          FFAppState().appUpgrade.uHlthCost)) {
                    logFirebaseEvent('Button_backend_call');

                    await currentUserReference!.update(createUserRecordData(
                      xp: valueOrDefault(currentUserDocument?.xp, 0.0) -
                          FFAppState().appUpgrade.uHlthCost,
                    ));
                    logFirebaseEvent('Button_update_app_state');
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
                    FFAppState().DmgBtnOpacity = 1.0;
                    FFAppState().ArmrBtnOpacity = 1.0;
                    safeSetState(() {});
                  } else {
                    logFirebaseEvent('Button_alert_dialog');
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Insufficient xp!'),
                          content: Text('You do not have enough xp!'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                    return;
                  }
                },
                text: 'Upgrade',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF015C0B),
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: FlutterFlowTheme.of(context).bodyLarge,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primaryText,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ].divide(SizedBox(width: 50.0)),
          ),
        ],
      ),
    );
  }
}
