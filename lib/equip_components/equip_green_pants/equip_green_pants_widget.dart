import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:just_audio/just_audio.dart';
import 'equip_green_pants_model.dart';
export 'equip_green_pants_model.dart';

class EquipGreenPantsWidget extends StatefulWidget {
  const EquipGreenPantsWidget({
    super.key,
    this.cost,
    this.img,
  });

  /// cost of the item
  final int? cost;

  final String? img;

  @override
  State<EquipGreenPantsWidget> createState() => _EquipGreenPantsWidgetState();
}

class _EquipGreenPantsWidgetState extends State<EquipGreenPantsWidget> {
  late EquipGreenPantsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EquipGreenPantsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xE457636C),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).equipText,
          width: 4.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Equip the Green Pants?',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  font: FlutterFlowTheme.of(context).bodyLarge,
                  color: FlutterFlowTheme.of(context).equipText,
                  letterSpacing: 0.0,
                ),
          ),

          // variable, should display selected shop item
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/greenBoots.png',
              width: 115.0,
              height: 115.0,
              fit: BoxFit.cover,
            ),
          ),
          StreamBuilder<List<ShopItemsRecord>>(
            stream: queryShopItemsRecord(
              parent: currentUserReference,
              singleRecord: true,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 25.0,
                    height: 25.0,
                    child: SpinKitRipple(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 25.0,
                    ),
                  ),
                );
              }
              List<ShopItemsRecord> buttonShopItemsRecordList = snapshot.data!;
              // Return an empty Container when the item does not exist.
              if (snapshot.data!.isEmpty) {
                return Container();
              }
              final buttonShopItemsRecord = buttonShopItemsRecordList.isNotEmpty
                  ? buttonShopItemsRecordList.first
                  : null;

              return FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('EQUIP_GREEN_PANTS_COMP_EQUIP_BTN_ON_TAP');
                  if (buttonShopItemsRecord!.greenPants) {
                    logFirebaseEvent('Button_update_app_state');
                    FFAppState().greenPantsEquip = 1;
                    FFAppState().redPantsEquip = 0;
                    FFAppState().bluePantsEquip = 0;
                    FFAppState().yellowPantsEquip = 0;
                    FFAppState().purplePantsEquip = 0;
                    FFAppState().cyanPantsEquip = 0;
                    safeSetState(() {});
                  } else {
                    logFirebaseEvent('Button_alert_dialog');
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Item Not Owned!'),
                          content:
                              Text('You have not yet purchased this item!'),
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
                  }

                  logFirebaseEvent('Button_bottom_sheet');
                  Navigator.pop(context);
                  logFirebaseEvent('Button_play_sound');
                  _model.soundPlayer ??= AudioPlayer();
                  if (_model.soundPlayer!.playing) {
                    await _model.soundPlayer!.stop();
                  }
                  _model.soundPlayer!.setVolume(1.0);
                  _model.soundPlayer!
                      .setAsset('assets/audios/item-equip-6904-_1_.wav')
                      .then((_) => _model.soundPlayer!.play());
                },
                text: 'Equip',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).success,
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: FlutterFlowTheme.of(context).bodyLarge,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              );
            },
          ),
          FFButtonWidget(
            onPressed: () async {
              logFirebaseEvent('EQUIP_GREEN_PANTS_UNEQUIP_BTN_ON_TAP');
              logFirebaseEvent('Button_bottom_sheet');
              Navigator.pop(context);
              logFirebaseEvent('Button_update_app_state');
              FFAppState().greenPantsEquip = 0;
              safeSetState(() {});
            },
            text: 'Unequip',
            options: FFButtonOptions(
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).tertiary,
              textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                    font: FlutterFlowTheme.of(context).bodyLarge,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    letterSpacing: 0.0,
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              logFirebaseEvent('EQUIP_GREEN_PANTS_COMP_CANCEL_BTN_ON_TAP');
              logFirebaseEvent('Button_bottom_sheet');
              Navigator.pop(context);
            },
            text: 'Cancel',
            options: FFButtonOptions(
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).error,
              textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                    font: FlutterFlowTheme.of(context).bodyLarge,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    letterSpacing: 0.0,
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ].divide(SizedBox(height: 6.0)),
      ),
    );
  }
}
