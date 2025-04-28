import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/alien/alien_widget.dart';
import '/components/astronaut/astronaut_widget.dart';
import '/components/game_lose/game_lose_widget.dart';
import '/components/game_win/game_win_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/game_page/armor_upgrade_h_u_d/armor_upgrade_h_u_d_widget.dart';
import '/game_page/damage_upgrade_h_u_d/damage_upgrade_h_u_d_widget.dart';
import '/game_page/health_upgrade_h_u_d/health_upgrade_h_u_d_widget.dart';
import '/walkthroughs/game_page_walkthrough.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
      logFirebaseEvent('gamePage_update_page_state');
      _model.stillArmPicOpacity = 1.0;
      safeSetState(() {});
      logFirebaseEvent('gamePage_update_page_state');
      _model.pageEnemy = EnemyStruct(
        eHealth: valueOrDefault<double>(
          FFAppState().appEnemy.eHealth,
          1.0,
        ),
        eDmg: valueOrDefault<double>(
          FFAppState().appEnemy.eDmg,
          1.0,
        ),
        eArmr: valueOrDefault<double>(
          FFAppState().appEnemy.eArmr,
          1.0,
        ),
      );
      _model.pagePlayer = PlayerStruct(
        pHealth: valueOrDefault<double>(
          FFAppState().appPlayer.pHealth,
          1.0,
        ),
        pDmg: valueOrDefault<double>(
          FFAppState().appPlayer.pDmg,
          1.0,
        ),
        pArmr: valueOrDefault<double>(
          FFAppState().appPlayer.pArmr,
          1.0,
        ),
      );
      safeSetState(() {});
      if (FFAppState().completedWalkthroughs.gamePage == false) {
        logFirebaseEvent('gamePage_start_walkthrough');
        safeSetState(() => _model.gamePageWalkthroughController =
            createPageWalkthrough(context));
        _model.gamePageWalkthroughController?.show(context: context);
        logFirebaseEvent('gamePage_update_app_state');
        FFAppState().updateCompletedWalkthroughsStruct(
          (e) => e..gamePage = true,
        );
        safeSetState(() {});
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
            duration: 500.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(-90.0, 0.0),
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
      'containerOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 100.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 100.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 100.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 100.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'iconButtonOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 80.0.ms,
            begin: 1.0,
            end: 0.25,
          ),
        ],
      ),
      'iconButtonOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 80.0.ms,
            begin: 1.0,
            end: 0.25,
          ),
        ],
      ),
      'iconButtonOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 80.0.ms,
            begin: 1.0,
            end: 0.25,
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
          backgroundColor: FlutterFlowTheme.of(context).secondaryText,
          body: SafeArea(
            top: true,
            child: Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/scifi_wallpaper.png',
                    ).image,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Container(
                        width: double.infinity,
                        height: 462.4,
                        decoration: BoxDecoration(
                          color: Color(0xD357636C),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                          border: Border.all(
                            color: Color(0xFF381212),
                            width: 4.0,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'XP: ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .bodyLarge,
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        letterSpacing: 0.0,
                                      ),
                                ).addWalkthrough(
                                  textRkfazhqq,
                                  _model.gamePageWalkthroughController,
                                ),
                                AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    formatNumber(
                                      valueOrDefault(
                                          currentUserDocument?.xp, 0.0),
                                      formatType: FormatType.decimal,
                                      decimalType: DecimalType.automatic,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 292.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 410.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          child: Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.asset(
                                                  'assets/images/scifi_wallpaper.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: double.infinity,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              if (FFAppState().gameNotRunning)
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.96, 0.73),
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x00FFFFFF),
                                                    ),
                                                    child: wrapWithModel(
                                                      model: _model.alienModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: AlienWidget(),
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
                                                  width: 120.0,
                                                  height: 120.0,
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
                                                        'assets/images/fight.gif',
                                                        width: 210.0,
                                                        height: 210.0,
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
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.76, 1.11),
                                      child: Container(
                                        width: 198.0,
                                        height: 198.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        child: Visibility(
                                          visible: !_model.gameRunning,
                                          child: wrapWithModel(
                                            model: _model.astronautModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: AstronautWidget(),
                                          ).addWalkthrough(
                                            containerKf3uj1hr,
                                            _model
                                                .gamePageWalkthroughController,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.52, 1.0),
                                      child: Container(
                                        width: 198.0,
                                        height: 198.0,
                                        decoration: BoxDecoration(),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
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
                                            Opacity(
                                              opacity: FFAppState()
                                                  .blueShipEquip
                                                  .toDouble(),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/shipDarkBlue.png',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Opacity(
                                              opacity: FFAppState()
                                                  .yellowShipEquip
                                                  .toDouble(),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/shipYellow.png',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Opacity(
                                              opacity: FFAppState()
                                                  .purpleShipEquip
                                                  .toDouble(),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/shipPurple.png',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Opacity(
                                              opacity: FFAppState()
                                                  .greenShipEquip
                                                  .toDouble(),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/shipGreen.png',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Opacity(
                                              opacity: FFAppState()
                                                  .redShipEquip
                                                  .toDouble(),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/shipRed.png',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Opacity(
                                              opacity: FFAppState()
                                                  .cyanShipEquip
                                                  .toDouble(),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/shipBase.png',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                                              font: FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              letterSpacing: 0.0,
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
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  letterSpacing: 0.0,
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
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  letterSpacing: 0.0,
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
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 2.0)),
                                      ),
                                    ],
                                  ).addWalkthrough(
                                    column2u7j6lud,
                                    _model.gamePageWalkthroughController,
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).black,
                                      borderRadius: 8.0,
                                      borderWidth: 2.0,
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
                                              logFirebaseEvent(
                                                  'battleButton_update_page_state');
                                              _model.gameRunning = true;
                                              safeSetState(() {});
                                              logFirebaseEvent(
                                                  'battleButton_update_app_state');
                                              FFAppState().gameNotRunning =
                                                  false;
                                              safeSetState(() {});
                                              logFirebaseEvent(
                                                  'battleButton_widget_animation');
                                              if (animationsMap[
                                                      'rowOnActionTriggerAnimation'] !=
                                                  null) {
                                                await animationsMap[
                                                        'rowOnActionTriggerAnimation']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              logFirebaseEvent(
                                                  'battleButton_widget_animation');
                                              if (animationsMap[
                                                      'containerOnActionTriggerAnimation3'] !=
                                                  null) {
                                                await animationsMap[
                                                        'containerOnActionTriggerAnimation3']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
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
                                                  'battleButton_widget_animation');
                                              if (animationsMap[
                                                      'containerOnActionTriggerAnimation1'] !=
                                                  null) {
                                                await animationsMap[
                                                        'containerOnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
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
                                              logFirebaseEvent(
                                                  'battleButton_widget_animation');
                                              if (animationsMap[
                                                      'containerOnActionTriggerAnimation1'] !=
                                                  null) {
                                                animationsMap[
                                                        'containerOnActionTriggerAnimation1']!
                                                    .controller
                                                    .reset();
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
                                                            rewards: 100.0,
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
                                                      (3 *
                                                          (FFAppState()
                                                                  .appEnemy
                                                                  .eLvl -
                                                              1)),
                                                  eDmg: _model.pageEnemy!.eDmg +
                                                      (2 *
                                                          (FFAppState()
                                                                  .appEnemy
                                                                  .eLvl -
                                                              1)),
                                                  eArmr:
                                                      _model.pageEnemy!.eArmr +
                                                          (0.15 *
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
                                                logFirebaseEvent(
                                                    'battleButton_backend_call');

                                                await currentUserReference!
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'coins':
                                                          FieldValue.increment(
                                                              100),
                                                    },
                                                  ),
                                                });
                                                if (FFAppState().enemyType ==
                                                    1) {
                                                  logFirebaseEvent(
                                                      'battleButton_update_app_state');
                                                  FFAppState().enemyType =
                                                      FFAppState().enemyType +
                                                          1;
                                                  FFAppState().wormVis = 0;
                                                  FFAppState().batVis = 1;
                                                  FFAppState().eyeVis = 0;
                                                  safeSetState(() {});
                                                } else {
                                                  if (FFAppState().enemyType ==
                                                      2) {
                                                    logFirebaseEvent(
                                                        'battleButton_update_app_state');
                                                    FFAppState().enemyType =
                                                        FFAppState().enemyType +
                                                            1;
                                                    FFAppState().eyeVis = 1;
                                                    FFAppState().batVis = 0;
                                                    FFAppState().wormVis = 0;
                                                    safeSetState(() {});
                                                  } else {
                                                    if (FFAppState()
                                                            .enemyType ==
                                                        3) {
                                                      logFirebaseEvent(
                                                          'battleButton_update_app_state');
                                                      FFAppState().enemyType =
                                                          1;
                                                      FFAppState().wormVis = 1;
                                                      FFAppState().batVis = 0;
                                                      FFAppState().eyeVis = 0;
                                                      safeSetState(() {});
                                                    }
                                                  }
                                                }
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
                                                  'battleButton_update_app_state');
                                              FFAppState().gameNotRunning =
                                                  true;
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

                                              logFirebaseEvent(
                                                  'battleButton_update_page_state');
                                              _model.fistForwardGifOpacity =
                                                  1.0;
                                              safeSetState(() {});
                                              logFirebaseEvent(
                                                  'battleButton_widget_animation');
                                              if (animationsMap[
                                                      'containerOnActionTriggerAnimation3'] !=
                                                  null) {
                                                await animationsMap[
                                                        'containerOnActionTriggerAnimation3']!
                                                    .controller
                                                    .reverse();
                                              }
                                              logFirebaseEvent(
                                                  'battleButton_widget_animation');
                                              if (animationsMap[
                                                      'rowOnActionTriggerAnimation'] !=
                                                  null) {
                                                await animationsMap[
                                                        'rowOnActionTriggerAnimation']!
                                                    .controller
                                                    .reverse();
                                              }
                                            },
                                    ).addWalkthrough(
                                      iconButtonJ2uguik5,
                                      _model.gamePageWalkthroughController,
                                    ),
                                    Text(
                                      'Attack',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
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
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  letterSpacing: 0.0,
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
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        letterSpacing: 0.0,
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
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  letterSpacing: 0.0,
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
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  letterSpacing: 0.0,
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
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  letterSpacing: 0.0,
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
                    Stack(
                      children: [
                        Container(
                          height: 300.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/armTerminal.png',
                              ).image,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    59.0, 0.0, 0.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: Color(0xFFE95157),
                                      borderRadius: 8.0,
                                      borderWidth: 4.0,
                                      buttonSize: 40.0,
                                      fillColor: Color(0xFFF0141E),
                                      disabledColor: Color(0x9536004D),
                                      icon: Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                        size: 24.0,
                                      ),
                                      onPressed: _model.gameRunning
                                          ? null
                                          : () async {
                                              logFirebaseEvent(
                                                  'GAME_PAGE_PAGE_upgHlthBtn_ON_TAP');
                                              logFirebaseEvent(
                                                  'upgHlthBtn_bottom_sheet');
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                isDismissible: false,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(context)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: Container(
                                                        height: 320.0,
                                                        child:
                                                            HealthUpgradeHUDWidget(
                                                          xpCost:
                                                              valueOrDefault<
                                                                  double>(
                                                            FFAppState()
                                                                .appUpgrade
                                                                .uHlthCost,
                                                            0.0,
                                                          ),
                                                          playerHlth: _model
                                                              .pagePlayer
                                                              ?.pHealth,
                                                          txt: 'Upgrade Health',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                    )
                                        .addWalkthrough(
                                          iconButtonG68umm1p,
                                          _model.gamePageWalkthroughController,
                                        )
                                        .animateOnActionTrigger(
                                          animationsMap[
                                              'iconButtonOnActionTriggerAnimation1']!,
                                        ),
                                    Opacity(
                                      opacity: FFAppState().DmgBtnOpacity,
                                      child: FlutterFlowIconButton(
                                        borderColor: Color(0xFFF6B84C),
                                        borderRadius: 8.0,
                                        borderWidth: 4.0,
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        disabledColor: Color(0x9536004D),
                                        icon: Icon(
                                          Icons.local_fire_department_outlined,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        onPressed: _model.gameRunning
                                            ? null
                                            : () async {
                                                logFirebaseEvent(
                                                    'GAME_PAGE_PAGE_upgDmgBtn_ON_TAP');
                                                logFirebaseEvent(
                                                    'upgDmgBtn_bottom_sheet');
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
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
                                                          height: 320.0,
                                                          child:
                                                              DamageUpgradeHUDWidget(
                                                            txt:
                                                                'Upgrade Damage',
                                                            xpCost: FFAppState()
                                                                .appUpgrade
                                                                .uDmgCost,
                                                            playerDmg: 0.0,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'iconButtonOnActionTriggerAnimation2']!,
                                      ),
                                    ),
                                    Opacity(
                                      opacity: FFAppState().ArmrBtnOpacity,
                                      child: FlutterFlowIconButton(
                                        borderColor: Color(0xFF79E3EE),
                                        borderRadius: 8.0,
                                        borderWidth: 4.0,
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        disabledColor: Color(0x9536004D),
                                        icon: Icon(
                                          Icons.shield_outlined,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        onPressed: _model.gameRunning
                                            ? null
                                            : () async {
                                                logFirebaseEvent(
                                                    'GAME_PAGE_PAGE_upgArmrBtn_ON_TAP');
                                                logFirebaseEvent(
                                                    'upgArmrBtn_bottom_sheet');
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
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
                                                          height: 320.0,
                                                          child:
                                                              ArmorUpgradeHUDWidget(
                                                            txt:
                                                                'Upgrade Armor',
                                                            xpCost: FFAppState()
                                                                .appUpgrade
                                                                .uArmrCost,
                                                            playerArmor: 0.0,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'iconButtonOnActionTriggerAnimation3']!,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                )
                                    .animateOnPageLoad(animationsMap[
                                        'rowOnPageLoadAnimation']!)
                                    .animateOnActionTrigger(
                                      animationsMap[
                                          'rowOnActionTriggerAnimation']!,
                                    ),
                              ),
                            ].divide(SizedBox(height: 10.0)),
                          ),
                        ).animateOnActionTrigger(
                          animationsMap['containerOnActionTriggerAnimation3']!,
                        ),
                      ],
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  TutorialCoachMark createPageWalkthrough(BuildContext context) =>
      TutorialCoachMark(
        targets: createWalkthroughTargets(context),
        onFinish: () async {
          safeSetState(() => _model.gamePageWalkthroughController = null);
        },
        onSkip: () {
          return true;
        },
      );
}
