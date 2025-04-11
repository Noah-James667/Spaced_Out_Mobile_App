import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/game_lose/game_lose_widget.dart';
import '/components/game_win/game_win_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'game_page_model.dart';
export 'game_page_model.dart';

class GamePageWidget extends StatefulWidget {
  const GamePageWidget({super.key});

  static String routeName = 'gamePage';
  static String routePath = '/gamePage';

  @override
  State<GamePageWidget> createState() => _GamePageWidgetState();
}

class _GamePageWidgetState extends State<GamePageWidget>
    with TickerProviderStateMixin {
  late GamePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasIconTriggered1 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GamePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'gamePage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('GAME_PAGE_PAGE_gamePage_ON_INIT_STATE');
      logFirebaseEvent('gamePage_update_page_state');
      _model.updatePageEnemyStruct(
        (e) => e
          ..eHealth = valueOrDefault<double>(
            FFAppState().appEnemy.eHealth,
            1.0,
          )
          ..eDmg = FFAppState().appEnemy.eDmg
          ..eArmr = FFAppState().appEnemy.eArmr,
      );
      _model.updatePagePlayerStruct(
        (e) => e
          ..pHealth = FFAppState().appPlayer.pHealth
          ..pDmg = FFAppState().appPlayer.pDmg
          ..pArmr = FFAppState().appPlayer.pArmr,
      );
      safeSetState(() {});
      if (valueOrDefault(currentUserDocument?.damageUpCost, 0) <= 0) {
      } else {
        return;
      }
    });

    animationsMap.addAll({
      'containerOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(-100.0, 0.0),
          ),
        ],
      ),
      'containerOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(-100.0, 0.0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 500.0.ms,
            duration: 500.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.15, 1.15),
          ),
        ],
      ),
      'textOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            hz: 3,
            offset: Offset(0.0, 0.0),
            rotation: 0.436,
          ),
        ],
      ),
      'iconOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 500.0.ms,
            duration: 500.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.15, 1.15),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.15, 1.15),
          ),
        ],
      ),
      'textOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            hz: 3,
            offset: Offset(0.0, 0.0),
            rotation: 0.436,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).alternate,
          body: SafeArea(
            top: true,
            child: Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Container(
                        width: double.infinity,
                        height: 450.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        ),
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
                                            alignment:
                                                AlignmentDirectional(0.65, 0.8),
                                            child: Container(
                                              width: 64.0,
                                              height: 64.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: Visibility(
                                                visible: !_model.gameRunning,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/wiggleMonster.png',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ).animateOnActionTrigger(
                                              animationsMap[
                                                  'containerOnActionTriggerAnimation1']!,
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.11, 0.81),
                                            child: Container(
                                              width: 72.0,
                                              height: 72.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: Visibility(
                                                visible: _model.gameRunning,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/battle.gif',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ).animateOnActionTrigger(
                                              animationsMap[
                                                  'containerOnActionTriggerAnimation2']!,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.07, 0.92),
                                    child: Container(
                                      width: 125.0,
                                      height: 125.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/shipStart.png',
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
                                      child: Visibility(
                                        visible: !_model.gameRunning,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/AS_1_(1).png',
                                            width: 200.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Flexible(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Player',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            color: Color(0xFFF0141E),
                                            size: 24.0,
                                          ).animateOnActionTrigger(
                                              animationsMap[
                                                  'iconOnActionTriggerAnimation1']!,
                                              hasBeenTriggered:
                                                  hasIconTriggered1),
                                          Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                _model.pagePlayer?.pHealth,
                                                formatType: FormatType.custom,
                                                format: '####.0#',
                                                locale: '',
                                              ),
                                              '1',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'textOnActionTriggerAnimation1']!,
                                          ),
                                        ].divide(SizedBox(width: 2.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.local_fire_department_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            size: 24.0,
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'iconOnActionTriggerAnimation2']!,
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                _model.pagePlayer?.pDmg,
                                                formatType: FormatType.custom,
                                                format: '####.0#',
                                                locale: '',
                                              ),
                                              '1',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 2.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.shield_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'iconOnActionTriggerAnimation3']!,
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                _model.pagePlayer?.pArmr,
                                                formatType: FormatType.custom,
                                                format: '####.0#',
                                                locale: '',
                                              ),
                                              '1',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 2.0)),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 60.0,
                                      fillColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      disabledColor: Color(0x8FFCA311),
                                      disabledIconColor:
                                          FlutterFlowTheme.of(context).info,
                                      icon: Icon(
                                        Icons.local_fire_department_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 30.0,
                                      ),
                                      onPressed: (_model.gameRunning == true)
                                          ? null
                                          : () async {
                                              logFirebaseEvent(
                                                  'GAME_PAGE_PAGE_battleButton_ON_TAP');
                                              // Set temporary variables equal to player and enemy variables.
                                              logFirebaseEvent(
                                                  'battleButton_update_page_state');
                                              _model.updatePageEnemyStruct(
                                                (e) => e
                                                  ..eHealth = FFAppState()
                                                      .appEnemy
                                                      .eHealth
                                                  ..eDmg =
                                                      FFAppState().appEnemy.eDmg
                                                  ..eArmr = FFAppState()
                                                      .appEnemy
                                                      .eArmr,
                                              );
                                              _model.updatePagePlayerStruct(
                                                (e) => e
                                                  ..pHealth = FFAppState()
                                                      .appPlayer
                                                      .pHealth
                                                  ..pDmg = FFAppState()
                                                      .appPlayer
                                                      .pDmg
                                                  ..pArmr = FFAppState()
                                                      .appPlayer
                                                      .pArmr,
                                              );
                                              safeSetState(() {});
                                              logFirebaseEvent(
                                                  'battleButton_update_page_state');
                                              _model.gameRunning = true;
                                              safeSetState(() {});
                                              while ((_model
                                                          .pagePlayer!.pHealth >
                                                      0.0) &&
                                                  (_model.pageEnemy!.eHealth >
                                                      0.0)) {
                                                logFirebaseEvent(
                                                    'battleButton_wait__delay');
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 500));
                                                logFirebaseEvent(
                                                    'battleButton_update_page_state');
                                                _model.updatePageEnemyStruct(
                                                  (e) => e
                                                    ..eHealth = _model
                                                            .pageEnemy!
                                                            .eHealth -
                                                        (FFAppState()
                                                                .appPlayer
                                                                .pDmg -
                                                            _model.pageEnemy!
                                                                .eArmr),
                                                );
                                                _model.updatePagePlayerStruct(
                                                  (e) => e
                                                    ..pHealth = _model
                                                            .pagePlayer!
                                                            .pHealth -
                                                        (FFAppState()
                                                                .appEnemy
                                                                .eDmg -
                                                            _model.pagePlayer!
                                                                .pArmr),
                                                );
                                                safeSetState(() {});
                                                logFirebaseEvent(
                                                    'battleButton_widget_animation');
                                                if (animationsMap[
                                                        'textOnActionTriggerAnimation1'] !=
                                                    null) {
                                                  animationsMap[
                                                          'textOnActionTriggerAnimation1']!
                                                      .controller
                                                      .forward(from: 0.0);
                                                }
                                                logFirebaseEvent(
                                                    'battleButton_widget_animation');
                                                if (animationsMap[
                                                        'textOnActionTriggerAnimation2'] !=
                                                    null) {
                                                  animationsMap[
                                                          'textOnActionTriggerAnimation2']!
                                                      .controller
                                                      .forward(from: 0.0);
                                                }
                                              }
                                              if (_model.pagePlayer!.pHealth <=
                                                  0.0) {
                                                logFirebaseEvent(
                                                    'battleButton_update_page_state');
                                                _model.playerWins = false;
                                                safeSetState(() {});
                                              } else {
                                                logFirebaseEvent(
                                                    'battleButton_update_page_state');
                                                _model.playerWins = true;
                                                safeSetState(() {});
                                              }

                                              if (_model.playerWins == true) {
                                                logFirebaseEvent(
                                                    'battleButton_bottom_sheet');
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: Container(
                                                          height: 300.0,
                                                          child: GameWinWidget(
                                                            rewards: (5 +
                                                                    (2 *
                                                                        (FFAppState().appEnemy.eLvl -
                                                                            1)))
                                                                .toDouble(),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));

                                                logFirebaseEvent(
                                                    'battleButton_update_page_state');
                                                _model.gameRunning = false;
                                                _model.pagePlayer =
                                                    PlayerStruct(
                                                  pHealth: FFAppState()
                                                      .appPlayer
                                                      .pHealth,
                                                  pDmg: FFAppState()
                                                      .appPlayer
                                                      .pDmg,
                                                  pArmr: FFAppState()
                                                      .appPlayer
                                                      .pArmr,
                                                );
                                                _model.pageEnemy = EnemyStruct(
                                                  eHealth: FFAppState()
                                                      .appEnemy
                                                      .eHealth,
                                                  eDmg: FFAppState()
                                                      .appEnemy
                                                      .eDmg,
                                                  eArmr: FFAppState()
                                                      .appEnemy
                                                      .eArmr,
                                                );
                                                safeSetState(() {});
                                                logFirebaseEvent(
                                                    'battleButton_update_app_state');
                                                FFAppState().appEnemy =
                                                    EnemyStruct(
                                                  eHealth: _model
                                                          .pageEnemy!.eHealth +
                                                      (5 *
                                                          (FFAppState()
                                                                  .appEnemy
                                                                  .eLvl -
                                                              1)),
                                                  eDmg: _model.pageEnemy!.eDmg +
                                                      (3 *
                                                          (FFAppState()
                                                                  .appEnemy
                                                                  .eLvl -
                                                              1)),
                                                  eArmr:
                                                      _model.pageEnemy!.eArmr +
                                                          (0.25 *
                                                              (FFAppState()
                                                                      .appEnemy
                                                                      .eLvl -
                                                                  1)),
                                                  eLvl: FFAppState()
                                                          .appEnemy
                                                          .eLvl +
                                                      1,
                                                );
                                                safeSetState(() {});
                                              } else {
                                                logFirebaseEvent(
                                                    'battleButton_bottom_sheet');
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: Container(
                                                          height: 300.0,
                                                          child:
                                                              GameLoseWidget(),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              }

                                              logFirebaseEvent(
                                                  'battleButton_update_page_state');
                                              _model.gameRunning = false;
                                              _model.pagePlayer = PlayerStruct(
                                                pHealth: FFAppState()
                                                    .appPlayer
                                                    .pHealth,
                                                pDmg:
                                                    FFAppState().appPlayer.pDmg,
                                                pArmr: FFAppState()
                                                    .appPlayer
                                                    .pArmr,
                                              );
                                              _model.pageEnemy = EnemyStruct(
                                                eHealth: FFAppState()
                                                    .appEnemy
                                                    .eHealth,
                                                eDmg:
                                                    FFAppState().appEnemy.eDmg,
                                                eArmr:
                                                    FFAppState().appEnemy.eArmr,
                                              );
                                              safeSetState(() {});
                                              logFirebaseEvent(
                                                  'battleButton_navigate_to');

                                              context.goNamed(
                                                GamePageWidget.routeName,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );
                                            },
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
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Enemy:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                FFAppState()
                                                    .appEnemy
                                                    .eLvl
                                                    .toString(),
                                                '1',
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 5.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            color: Color(0xFFF0141E),
                                            size: 24.0,
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                _model.pageEnemy?.eHealth,
                                                formatType: FormatType.custom,
                                                format: '####.0#',
                                                locale: '',
                                              ),
                                              '1',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'textOnActionTriggerAnimation2']!,
                                          ),
                                        ].divide(SizedBox(width: 2.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.local_fire_department_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            size: 24.0,
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                _model.pageEnemy?.eDmg,
                                                formatType: FormatType.custom,
                                                format: '####.0#',
                                                locale: '',
                                              ),
                                              '1',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 2.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.shield_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                _model.pageEnemy?.eArmr,
                                                formatType: FormatType.custom,
                                                format: '####.0#',
                                                locale: '',
                                              ),
                                              '1',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 2.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[]
                            .divide(SizedBox(width: 50.0))
                            .around(SizedBox(width: 50.0)),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 175.0,
                              height: 65.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Health: ',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Level: ',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          FFAppState()
                                              .appUpgrade
                                              .uHlthLvl
                                              .toString(),
                                          '1',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Cost: ',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          formatNumber(
                                            FFAppState().appUpgrade.uHlthCost,
                                            formatType: FormatType.custom,
                                            format: '####.0#',
                                            locale: '',
                                          ),
                                          '1',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context).secondary,
                              disabledColor: Color(0x9536004D),
                              icon: Icon(
                                Icons.add_outlined,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              onPressed: _model.gameRunning
                                  ? null
                                  : () async {
                                      logFirebaseEvent(
                                          'GAME_PAGE_PAGE_add_outlined_ICN_ON_TAP');
                                      if ((valueOrDefault(
                                                  currentUserDocument?.xp, 0) >
                                              0) &&
                                          (valueOrDefault(
                                                  currentUserDocument?.xp, 0) >=
                                              valueOrDefault(
                                                  currentUserDocument
                                                      ?.damageUpCost,
                                                  0))) {
                                        logFirebaseEvent(
                                            'IconButton_widget_animation');
                                        if (animationsMap[
                                                'iconOnActionTriggerAnimation1'] !=
                                            null) {
                                          safeSetState(
                                              () => hasIconTriggered1 = true);
                                          SchedulerBinding.instance.addPostFrameCallback(
                                              (_) async => animationsMap[
                                                      'iconOnActionTriggerAnimation1']!
                                                  .controller
                                                  .forward(from: 0.0)
                                                  .whenComplete(animationsMap[
                                                          'iconOnActionTriggerAnimation1']!
                                                      .controller
                                                      .reverse));
                                        }
                                        logFirebaseEvent(
                                            'IconButton_update_app_state');
                                        FFAppState().updateAppUpgradeStruct(
                                          (e) => e
                                            ..uHlthCost = FFAppState()
                                                    .appUpgrade
                                                    .uHlthCost +
                                                (5 *
                                                    (FFAppState()
                                                            .appUpgrade
                                                            .uHlthLvl -
                                                        1))
                                            ..uHlthLvl = FFAppState()
                                                    .appUpgrade
                                                    .uHlthLvl +
                                                1,
                                        );
                                        FFAppState().updateAppPlayerStruct(
                                          (e) => e
                                            ..pHealth =
                                                FFAppState().appPlayer.pHealth +
                                                    (5 *
                                                        (FFAppState()
                                                                .appUpgrade
                                                                .uHlthLvl -
                                                            1)),
                                        );
                                        safeSetState(() {});
                                      } else {
                                        logFirebaseEvent(
                                            'IconButton_alert_dialog');
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('!'),
                                              content: Text('Not enough xp!'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        return;
                                      }

                                      logFirebaseEvent(
                                          'IconButton_navigate_to');

                                      context.goNamed(
                                        GamePageWidget.routeName,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                            ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 175.0,
                              height: 65.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Armor: ',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Level: ',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          FFAppState()
                                              .appUpgrade
                                              .uArmrLvl
                                              .toString(),
                                          '1',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Cost: ',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          formatNumber(
                                            FFAppState().appUpgrade.uArmrCost,
                                            formatType: FormatType.custom,
                                            format: '####.0#',
                                            locale: '',
                                          ),
                                          '1',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context).secondary,
                              disabledColor: Color(0x9536004D),
                              icon: Icon(
                                Icons.add_outlined,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              onPressed: _model.gameRunning
                                  ? null
                                  : () async {
                                      logFirebaseEvent(
                                          'GAME_PAGE_PAGE_add_outlined_ICN_ON_TAP');
                                      if ((valueOrDefault(
                                                  currentUserDocument?.xp, 0) >
                                              0) &&
                                          (valueOrDefault(
                                                  currentUserDocument?.xp, 0) >=
                                              valueOrDefault(
                                                  currentUserDocument
                                                      ?.damageUpCost,
                                                  0))) {
                                        logFirebaseEvent(
                                            'IconButton_widget_animation');
                                        if (animationsMap[
                                                'iconOnActionTriggerAnimation3'] !=
                                            null) {
                                          animationsMap[
                                                  'iconOnActionTriggerAnimation3']!
                                              .controller
                                              .forward(from: 0.0)
                                              .whenComplete(animationsMap[
                                                      'iconOnActionTriggerAnimation3']!
                                                  .controller
                                                  .reverse);
                                        }
                                        logFirebaseEvent(
                                            'IconButton_update_app_state');
                                        FFAppState().updateAppUpgradeStruct(
                                          (e) => e
                                            ..uArmrCost = FFAppState()
                                                    .appUpgrade
                                                    .uArmrCost +
                                                (5 *
                                                    (FFAppState()
                                                            .appUpgrade
                                                            .uArmrLvl -
                                                        1))
                                            ..uArmrLvl = FFAppState()
                                                    .appUpgrade
                                                    .uArmrLvl +
                                                1,
                                        );
                                        FFAppState().updateAppPlayerStruct(
                                          (e) => e
                                            ..pArmr =
                                                FFAppState().appPlayer.pArmr +
                                                    (5 *
                                                        (FFAppState()
                                                                .appUpgrade
                                                                .uHlthLvl -
                                                            1)),
                                        );
                                        safeSetState(() {});
                                      } else {
                                        logFirebaseEvent(
                                            'IconButton_alert_dialog');
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('!'),
                                              content: Text('Not enough xp!'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        return;
                                      }

                                      logFirebaseEvent(
                                          'IconButton_navigate_to');

                                      context.goNamed(
                                        GamePageWidget.routeName,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                            ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 175.0,
                              height: 65.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(8.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Damage: ',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Level: ',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          FFAppState()
                                              .appUpgrade
                                              .uDmgLvl
                                              .toString(),
                                          '1',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Cost: ',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            formatNumber(
                                              FFAppState().appUpgrade.uDmgCost,
                                              formatType: FormatType.custom,
                                              format: '####.0#',
                                              locale: '',
                                            ),
                                            '1',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context).secondary,
                              disabledColor: Color(0x9536004D),
                              icon: Icon(
                                Icons.add_outlined,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              onPressed: _model.gameRunning
                                  ? null
                                  : () async {
                                      logFirebaseEvent(
                                          'GAME_PAGE_PAGE_add_outlined_ICN_ON_TAP');
                                      if ((valueOrDefault(
                                                  currentUserDocument?.xp, 0) >
                                              0) &&
                                          (valueOrDefault(
                                                  currentUserDocument?.xp, 0) >=
                                              valueOrDefault(
                                                  currentUserDocument
                                                      ?.damageUpCost,
                                                  0))) {
                                        logFirebaseEvent(
                                            'IconButton_update_app_state');
                                        FFAppState().updateAppPlayerStruct(
                                          (e) => e..incrementPDmg(1.0),
                                        );
                                        safeSetState(() {});
                                        logFirebaseEvent(
                                            'IconButton_widget_animation');
                                        if (animationsMap[
                                                'iconOnActionTriggerAnimation2'] !=
                                            null) {
                                          animationsMap[
                                                  'iconOnActionTriggerAnimation2']!
                                              .controller
                                              .forward(from: 0.0)
                                              .whenComplete(animationsMap[
                                                      'iconOnActionTriggerAnimation2']!
                                                  .controller
                                                  .reverse);
                                        }
                                        logFirebaseEvent(
                                            'IconButton_update_app_state');
                                        FFAppState().updateAppUpgradeStruct(
                                          (e) => e
                                            ..uDmgCost = FFAppState()
                                                    .appUpgrade
                                                    .uDmgCost +
                                                (5 *
                                                    (FFAppState()
                                                            .appUpgrade
                                                            .uDmgLvl -
                                                        1))
                                            ..uDmgLvl = FFAppState()
                                                    .appUpgrade
                                                    .uDmgLvl +
                                                1,
                                        );
                                        FFAppState().updateAppPlayerStruct(
                                          (e) => e
                                            ..pDmg =
                                                FFAppState().appPlayer.pDmg +
                                                    (5 *
                                                        (FFAppState()
                                                                .appUpgrade
                                                                .uHlthLvl -
                                                            1)),
                                        );
                                        safeSetState(() {});
                                      } else {
                                        logFirebaseEvent(
                                            'IconButton_alert_dialog');
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('!'),
                                              content: Text('Not enough xp!'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        return;
                                      }

                                      logFirebaseEvent(
                                          'IconButton_navigate_to');

                                      context.goNamed(
                                        GamePageWidget.routeName,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                            ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                      ].divide(SizedBox(height: 10.0)),
                    ),
                    FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.3,
                      fillColor: FlutterFlowTheme.of(context).error,
                      disabledColor: Color(0x83F0141E),
                      disabledIconColor: FlutterFlowTheme.of(context).info,
                      icon: Icon(
                        Icons.restart_alt_sharp,
                        color: FlutterFlowTheme.of(context).info,
                        size: 20.0,
                      ),
                      onPressed: (_model.gameRunning == true)
                          ? null
                          : () async {
                              logFirebaseEvent(
                                  'GAME_PAGE_PAGE_battleButton_ON_TAP');
                              logFirebaseEvent('battleButton_update_app_state');
                              FFAppState().updateAppEnemyStruct(
                                (e) => e
                                  ..eHealth = 100.0
                                  ..eDmg = 10.0
                                  ..eArmr = 2.0
                                  ..eLvl = 1,
                              );
                              FFAppState().updateAppPlayerStruct(
                                (e) => e
                                  ..pHealth = 100.0
                                  ..pDmg = 10.0
                                  ..pArmr = 2.0,
                              );
                              safeSetState(() {});
                              logFirebaseEvent('battleButton_navigate_to');

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
                            },
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .around(SizedBox(height: 10.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
