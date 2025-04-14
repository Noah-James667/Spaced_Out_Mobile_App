import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'equip_big_sword_model.dart';
export 'equip_big_sword_model.dart';

class EquipBigSwordWidget extends StatefulWidget {
  const EquipBigSwordWidget({
    super.key,
    this.cost,
    this.img,
  });

  /// cost of the item
  final int? cost;

  final String? img;

  @override
  State<EquipBigSwordWidget> createState() => _EquipBigSwordWidgetState();
}

class _EquipBigSwordWidgetState extends State<EquipBigSwordWidget> {
  late EquipBigSwordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EquipBigSwordModel());

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
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
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
            'Equip the Big Sword?',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                  color: FlutterFlowTheme.of(context).equipText,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyLargeFamily),
                ),
          ),

          // variable, should display selected shop item
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/swordUpgradeTwo.png',
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
                  logFirebaseEvent('EQUIP_BIG_SWORD_COMP_EQUIP_BTN_ON_TAP');
                  if (buttonShopItemsRecord!.bigSword) {
                    logFirebaseEvent('Button_update_app_state');
                    FFAppState().bigSwordEquip = 1;
                    FFAppState().smallSwordEquip = 0;
                    FFAppState().spaceSwordEquip = 0;
                    FFAppState().zappyGunEquip = 0;
                    FFAppState().sniperGunEquip = 0;
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
                },
                text: 'Equip',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).success,
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyLargeFamily,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyLargeFamily),
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              );
            },
          ),
          FFButtonWidget(
            onPressed: () async {
              logFirebaseEvent('EQUIP_BIG_SWORD_COMP_UNEQUIP_BTN_ON_TAP');
              logFirebaseEvent('Button_bottom_sheet');
              Navigator.pop(context);
              logFirebaseEvent('Button_update_app_state');
              FFAppState().bigSwordEquip = 0;
              safeSetState(() {});
            },
            text: 'Unequip',
            options: FFButtonOptions(
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).tertiary,
              textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyLargeFamily),
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              logFirebaseEvent('EQUIP_BIG_SWORD_COMP_CANCEL_BTN_ON_TAP');
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
                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyLargeFamily),
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
