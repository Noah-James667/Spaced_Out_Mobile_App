import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:just_audio/just_audio.dart';
import 'purchase_big_sword_model.dart';
export 'purchase_big_sword_model.dart';

class PurchaseBigSwordWidget extends StatefulWidget {
  const PurchaseBigSwordWidget({
    super.key,
    this.cost,
    this.img,
  });

  /// cost of the item
  final int? cost;

  final String? img;

  @override
  State<PurchaseBigSwordWidget> createState() => _PurchaseBigSwordWidgetState();
}

class _PurchaseBigSwordWidgetState extends State<PurchaseBigSwordWidget> {
  late PurchaseBigSwordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PurchaseBigSwordModel());

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
          color: FlutterFlowTheme.of(context).shopText,
          width: 4.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Confirm Purchase',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  font: FlutterFlowTheme.of(context).bodyLarge,
                  color: FlutterFlowTheme.of(context).shopText,
                  letterSpacing: 0.0,
                ),
          ),
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(),
            child:
                // variable, should display selected shop item
                ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/swordUpgradeTwo.png',
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            'This item costs:',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: FlutterFlowTheme.of(context).bodyMedium,
                  color: FlutterFlowTheme.of(context).shopText,
                  letterSpacing: 0.0,
                ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 64.0,
                height: 64.0,
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/coinSpin64Slow.gif',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                '200',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: FlutterFlowTheme.of(context).bodyMedium,
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('PURCHASE_BIG_SWORD_CANCEL_BTN_ON_TAP');
                  logFirebaseEvent('Button_bottom_sheet');
                  Navigator.pop(context);
                },
                text: 'Cancel',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).error,
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
                  List<ShopItemsRecord> buttonShopItemsRecordList =
                      snapshot.data!;
                  // Return an empty Container when the item does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final buttonShopItemsRecord =
                      buttonShopItemsRecordList.isNotEmpty
                          ? buttonShopItemsRecordList.first
                          : null;

                  return FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'PURCHASE_BIG_SWORD_COMP_BUY_BTN_ON_TAP');
                      if (buttonShopItemsRecord!.bigSword) {
                        logFirebaseEvent('Button_alert_dialog');
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Already Purchased!'),
                              content:
                                  Text('You have already purchased this item!'),
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
                        logFirebaseEvent('Button_bottom_sheet');
                        Navigator.pop(context);
                        logFirebaseEvent('Button_update_app_state');
                        FFAppState().bigSwordBought = 0.5;
                        FFAppState().bigSwordAvail = 1.0;
                        safeSetState(() {});
                      } else if (valueOrDefault(currentUserDocument?.coins, 0) <
                          200) {
                        logFirebaseEvent('Button_alert_dialog');
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Not Enough Coins!'),
                              content: Text(
                                  'You do not have enough coins to purchase this item!'),
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
                        logFirebaseEvent('Button_bottom_sheet');
                        Navigator.pop(context);
                      } else {
                        logFirebaseEvent('Button_backend_call');

                        await currentUserReference!.update({
                          ...mapToFirestore(
                            {
                              'coins': FieldValue.increment(-(200)),
                            },
                          ),
                        });
                        logFirebaseEvent('Button_backend_call');

                        await buttonShopItemsRecord.reference
                            .update(createShopItemsRecordData(
                          bigSword: true,
                        ));
                        logFirebaseEvent('Button_bottom_sheet');
                        Navigator.pop(context);
                        logFirebaseEvent('Button_play_sound');
                        _model.soundPlayer ??= AudioPlayer();
                        if (_model.soundPlayer!.playing) {
                          await _model.soundPlayer!.stop();
                        }
                        _model.soundPlayer!.setVolume(1.0);
                        _model.soundPlayer!
                            .setAsset('assets/audios/Pixel_20.wav')
                            .then((_) => _model.soundPlayer!.play());

                        logFirebaseEvent('Button_update_app_state');
                        FFAppState().bigSwordBought = 0.5;
                        FFAppState().bigSwordAvail = 1.0;
                        safeSetState(() {});
                      }
                    },
                    text: 'Buy',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).shopText,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyLarge
                          .override(
                            font: FlutterFlowTheme.of(context).bodyLarge,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            letterSpacing: 0.0,
                          ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryText,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  );
                },
              ),
            ].divide(SizedBox(width: 50.0)),
          ),
        ],
      ),
    );
  }
}
