import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'storage_page_model.dart';
export 'storage_page_model.dart';

class StoragePageWidget extends StatefulWidget {
  const StoragePageWidget({super.key});

  static String routeName = 'storagePage';
  static String routePath = '/storagePage';

  @override
  State<StoragePageWidget> createState() => _StoragePageWidgetState();
}

class _StoragePageWidgetState extends State<StoragePageWidget> {
  late StoragePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StoragePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'storagePage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('STORAGE_storagePage_ON_INIT_STATE');
      if (valueOrDefault(currentUserDocument?.damageUpCost, 0) <= 0) {
        logFirebaseEvent('storagePage_backend_call');

        await currentUserReference!.update(createUserRecordData(
          damageUpCost: 1,
        ));
      } else {
        return;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        width: 375.0,
                        height: 524.8,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'XP: ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      formatNumber(
                                        valueOrDefault(
                                            currentUserDocument?.xp, 0),
                                        formatType: FormatType.decimal,
                                        decimalType: DecimalType.automatic,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 410.0,
                                height: 292.01,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: 410.0,
                                        height: 410.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/scifi_wallpaper.png',
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.99, 0.8),
                                              child: Container(
                                                width: 64.0,
                                                height: 64.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0x00FFFFFF),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/alienBatFly.gif',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.95, 0.91),
                                      child: Container(
                                        width: 125.0,
                                        height: 200.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/vnimc_1.png',
                                            width: 200.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.34, 0.79),
                                      child: Container(
                                        width: 64.0,
                                        height: 64.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/asTerrySwordSwing.gif',
                                            width: 200.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FlutterFlowTimer(
                                        initialTime: _model.timerInitialTimeMs,
                                        getDisplayTime: (value) =>
                                            StopWatchTimer.getDisplayTime(
                                          value,
                                          hours: false,
                                          milliSecond: false,
                                        ),
                                        controller: _model.timerController,
                                        updateStateInterval:
                                            Duration(milliseconds: 1000),
                                        onChanged:
                                            (value, displayTime, shouldUpdate) {
                                          _model.timerMilliseconds = value;
                                          _model.timerValue = displayTime;
                                          if (shouldUpdate) safeSetState(() {});
                                        },
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily),
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: FlutterFlowIconButton(
                                          borderRadius: 8.0,
                                          buttonSize: 60.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                          icon: Icon(
                                            Icons.wb_sunny,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'STORAGE_PAGE_PAGE_wb_sunny_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_timer');
                                            _model.timerController
                                                .onStartTimer();
                                            logFirebaseEvent(
                                                'IconButton_start_periodic_action');
                                            _model.battleTimer =
                                                InstantTimer.periodic(
                                              duration:
                                                  Duration(milliseconds: 3000),
                                              callback: (timer) async {
                                                await Future.wait([
                                                  Future(() async {
                                                    if (FFAppState()
                                                            .appPlayer
                                                            .pHealth <=
                                                        0.0) {
                                                      logFirebaseEvent(
                                                          'IconButton_timer');
                                                      _model.timerController
                                                          .onResetTimer();

                                                      logFirebaseEvent(
                                                          'IconButton_stop_periodic_action');
                                                      _model.battleTimer
                                                          ?.cancel();
                                                    } else {
                                                      logFirebaseEvent(
                                                          'IconButton_update_app_state');
                                                      FFAppState()
                                                          .updateAppEnemyStruct(
                                                        (e) => e
                                                          ..incrementEHealth(
                                                              FFAppState()
                                                                  .appPlayer
                                                                  .pDamage),
                                                      );
                                                      safeSetState(() {});
                                                    }
                                                  }),
                                                  Future(() async {
                                                    if (FFAppState()
                                                            .appEnemy
                                                            .eHealth <=
                                                        0.0) {
                                                      logFirebaseEvent(
                                                          'IconButton_timer');
                                                      _model.timerController
                                                          .onResetTimer();

                                                      logFirebaseEvent(
                                                          'IconButton_stop_periodic_action');
                                                      _model.battleTimer
                                                          ?.cancel();
                                                    } else {
                                                      logFirebaseEvent(
                                                          'IconButton_update_app_state');
                                                      FFAppState()
                                                          .updateAppPlayerStruct(
                                                        (e) => e
                                                          ..incrementPHealth(
                                                              FFAppState()
                                                                  .appEnemy
                                                                  .eDmg),
                                                      );
                                                      safeSetState(() {});
                                                    }
                                                  }),
                                                ]);
                                                logFirebaseEvent(
                                                    'IconButton_stop_periodic_action');
                                                _model.battleTimer?.cancel();
                                                logFirebaseEvent(
                                                    'IconButton_timer');
                                                _model.timerController
                                                    .onResetTimer();

                                                logFirebaseEvent(
                                                    'IconButton_update_app_state');
                                                FFAppState().appEnemy =
                                                    EnemyStruct(
                                                  eHealth: 1.0,
                                                );
                                                FFAppState().appPlayer =
                                                    PlayerStruct(
                                                  pHealth: 1.0,
                                                );
                                                safeSetState(() {});
                                              },
                                              startImmediately: false,
                                            );
                                          },
                                        ),
                                      ),
                                      Text(
                                        'Attack',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Player',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: FlutterFlowTheme.of(context).error,
                                size: 24.0,
                              ),
                              Text(
                                formatNumber(
                                  FFAppState().appPlayer.pHealth,
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.automatic,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.content_cut,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              Text(
                                formatNumber(
                                  FFAppState().appPlayer.pDamage,
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.automatic,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ],
                          ),
                          Container(
                            height: 40.0,
                            child: LinearPercentIndicator(
                              percent: FFAppState().appPlayer.pHealth,
                              width: 145.0,
                              lineHeight: 12.0,
                              animation: true,
                              animateFromLastPercent: true,
                              progressColor:
                                  FlutterFlowTheme.of(context).alternate,
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              padding: EdgeInsets.zero,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Enemy',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          Text(
                            formatNumber(
                              FFAppState().appEnemy.eHealth,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.automatic,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          Text(
                            formatNumber(
                              FFAppState().appEnemy.eDmg,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.automatic,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          Container(
                            height: 40.0,
                            child: LinearPercentIndicator(
                              percent: FFAppState().appEnemy.eHealth,
                              width: 145.0,
                              lineHeight: 12.0,
                              animation: true,
                              animateFromLastPercent: true,
                              progressColor:
                                  FlutterFlowTheme.of(context).alternate,
                              backgroundColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              padding: EdgeInsets.zero,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Upgrade: ',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Current: ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                              Text(
                                formatNumber(
                                  FFAppState().appPlayer.pDamage,
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.automatic,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Cost: ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  formatNumber(
                                    valueOrDefault(
                                        currentUserDocument?.damageUpCost, 0),
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.automatic,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).secondary,
                          icon: Icon(
                            Icons.trending_up_outlined,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'STORAGE_trending_up_outlined_ICN_ON_TAP');
                            if ((valueOrDefault(currentUserDocument?.xp, 0) >
                                    0) &&
                                (valueOrDefault(currentUserDocument?.xp, 0) >=
                                    valueOrDefault(
                                        currentUserDocument?.damageUpCost,
                                        0))) {
                              logFirebaseEvent('IconButton_backend_call');

                              await currentUserReference!.update({
                                ...mapToFirestore(
                                  {
                                    'damage': FieldValue.increment(-(.1)),
                                    'xp': FieldValue.increment(-(valueOrDefault(
                                        currentUserDocument?.damageUpCost, 0))),
                                  },
                                ),
                              });
                              logFirebaseEvent('IconButton_update_app_state');
                              FFAppState().updateAppPlayerStruct(
                                (e) => e..incrementPDamage(-.01),
                              );
                              safeSetState(() {});
                            } else {
                              logFirebaseEvent('IconButton_alert_dialog');
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('!'),
                                    content: Text('Not enough xp!'),
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
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
