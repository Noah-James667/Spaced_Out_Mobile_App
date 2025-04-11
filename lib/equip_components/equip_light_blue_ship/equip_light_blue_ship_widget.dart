import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'equip_light_blue_ship_model.dart';
export 'equip_light_blue_ship_model.dart';

class EquipLightBlueShipWidget extends StatefulWidget {
  const EquipLightBlueShipWidget({
    super.key,
    this.cost,
    this.img,
  });

  /// cost of the item
  final int? cost;

  final String? img;

  @override
  State<EquipLightBlueShipWidget> createState() =>
      _EquipLightBlueShipWidgetState();
}

class _EquipLightBlueShipWidgetState extends State<EquipLightBlueShipWidget> {
  late EquipLightBlueShipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EquipLightBlueShipModel());

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
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).tertiary,
          width: 3.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Equip the Cyan Ship?',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleMediumFamily),
                ),
          ),

          // variable, should display selected shop item
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/shipBase.png',
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
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitFoldingCube(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
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
                  logFirebaseEvent('EQUIP_LIGHT_BLUE_SHIP_EQUIP_BTN_ON_TAP');
                  logFirebaseEvent('Button_bottom_sheet');
                  Navigator.pop(context);
                  if (buttonShopItemsRecord!.lightBlueShip) {
                    logFirebaseEvent('Button_update_app_state');
                    FFAppState().cyanShipEquip = 1;
                    FFAppState().redShipEquip = 0;
                    FFAppState().blueShipEquip = 0;
                    FFAppState().greenShipEquip = 0;
                    FFAppState().yellowShipEquip = 0;
                    FFAppState().purpleShipEquip = 0;
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
          Container(
            width: 100.0,
            height: 10.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              logFirebaseEvent('EQUIP_LIGHT_BLUE_SHIP_UNEQUIP_BTN_ON_TAP');
              logFirebaseEvent('Button_bottom_sheet');
              Navigator.pop(context);
              logFirebaseEvent('Button_update_app_state');
              FFAppState().cyanShipEquip = 0;
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
          Container(
            width: 100.0,
            height: 10.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              logFirebaseEvent('EQUIP_LIGHT_BLUE_SHIP_CANCEL_BTN_ON_TAP');
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
        ],
      ),
    );
  }
}
