import '/components/create_task_widget.dart';
import '/components/task_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'main_nav_bar_model.dart';
export 'main_nav_bar_model.dart';

class MainNavBarWidget extends StatefulWidget {
  const MainNavBarWidget({super.key});

  @override
  State<MainNavBarWidget> createState() => _MainNavBarWidgetState();
}

class _MainNavBarWidgetState extends State<MainNavBarWidget>
    with TickerProviderStateMixin {
  late MainNavBarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainNavBarModel());

    _model.tabBarController1 = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.tabBarController2 = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: Align(
          alignment: const AlignmentDirectional(1.0, 0.8),
          child: FloatingActionButton(
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: const SizedBox(
                        height: 400.0,
                        child: CreateTaskWidget(),
                      ),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            child: Icon(
              Icons.add_rounded,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController1,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: const Alignment(0.0, 0),
                                      child: FlutterFlowButtonTabBar(
                                        useToggleButtonStyle: true,
                                        isScrollable: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              letterSpacing: 0.0,
                                            ),
                                        unselectedLabelStyle: const TextStyle(),
                                        labelColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        unselectedLabelColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        unselectedBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius: 12.0,
                                        elevation: 0.0,
                                        labelPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                20.0, 0.0, 20.0, 0.0),
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 12.0),
                                        tabs: const [
                                          Tab(
                                            text: 'Month',
                                          ),
                                          Tab(
                                            text: 'Week',
                                          ),
                                        ],
                                        controller: _model.tabBarController2,
                                        onTap: (i) async {
                                          [() async {}, () async {}][i]();
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        controller: _model.tabBarController2,
                                        children: [
                                          Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 3.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset: Offset(
                                                            0.0,
                                                            1.0,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    child: FlutterFlowCalendar(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      iconColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      weekFormat: false,
                                                      weekStartsMonday: true,
                                                      onChange: (DateTimeRange?
                                                          newSelectedDate) {
                                                        safeSetState(() => _model
                                                                .calendarSelectedDay1 =
                                                            newSelectedDate);
                                                      },
                                                      titleStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Inter Tight',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      dayOfWeekStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      dateStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      selectedDateStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Inter Tight',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      inactiveDateStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    12.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Coming Up',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    12.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: ListView(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          children: const [],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    12.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Past Due',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    12.0,
                                                                    0.0,
                                                                    24.0),
                                                        child: ListView(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          children: const [],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 3.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset: Offset(
                                                            0.0,
                                                            1.0,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    child: FlutterFlowCalendar(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      iconColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      weekFormat: true,
                                                      weekStartsMonday: true,
                                                      onChange: (DateTimeRange?
                                                          newSelectedDate) {
                                                        safeSetState(() => _model
                                                                .calendarSelectedDay2 =
                                                            newSelectedDate);
                                                      },
                                                      titleStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Inter Tight',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      dayOfWeekStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      dateStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      selectedDateStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Inter Tight',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      inactiveDateStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    12.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Coming Up',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    12.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: ListView(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          children: const [],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    12.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Past Due',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    12.0,
                                                                    0.0,
                                                                    24.0),
                                                        child: ListView(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          children: const [],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: Text(
                                            'Task Nova',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Inter Tight',
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                              border: Border.all(
                                                width: 2.0,
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(22.0),
                                              child: Image.asset(
                                                'assets/images/AS_1_(1).png',
                                                width: 100.5,
                                                height: 200.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              LinearPercentIndicator(
                                                percent: 0.5,
                                                width: 150.0,
                                                lineHeight: 12.0,
                                                animation: false,
                                                animateFromLastPercent: true,
                                                progressColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                                padding: EdgeInsets.zero,
                                              ),
                                              LinearPercentIndicator(
                                                percent: 0.5,
                                                width: 150.0,
                                                lineHeight: 12.0,
                                                animation: false,
                                                animateFromLastPercent: true,
                                                progressColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                                padding: EdgeInsets.zero,
                                              ),
                                              LinearPercentIndicator(
                                                percent: 0.5,
                                                width: 150.0,
                                                lineHeight: 12.0,
                                                animation: true,
                                                animateFromLastPercent: true,
                                                progressColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                                padding: EdgeInsets.zero,
                                              ),
                                            ]
                                                .divide(const SizedBox(height: 5.0))
                                                .around(const SizedBox(height: 5.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Tasks',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Inter Tight',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Expanded(
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: wrapWithModel(
                                            model: _model.taskModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const TaskWidget(
                                              checked: false,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 200.0,
                                  child: CarouselSlider(
                                    items: [
                                      Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFC6C6C6),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          border: Border.all(
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFC6C6C6),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          border: Border.all(
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFC6C6C6),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          border: Border.all(
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                    carouselController:
                                        _model.carouselController1 ??=
                                            CarouselSliderController(),
                                    options: CarouselOptions(
                                      initialPage: 1,
                                      viewportFraction: 0.5,
                                      disableCenter: true,
                                      enlargeCenterPage: true,
                                      enlargeFactor: 0.25,
                                      enableInfiniteScroll: true,
                                      scrollDirection: Axis.horizontal,
                                      autoPlay: false,
                                      onPageChanged: (index, _) =>
                                          _model.carouselCurrentIndex1 = index,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 200.0,
                                child: CarouselSlider(
                                  items: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://picsum.photos/seed/487/600',
                                        width: 200.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://picsum.photos/seed/539/600',
                                        width: 200.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://picsum.photos/seed/429/600',
                                        width: 200.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                  carouselController:
                                      _model.carouselController2 ??=
                                          CarouselSliderController(),
                                  options: CarouselOptions(
                                    initialPage: 1,
                                    viewportFraction: 0.5,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.25,
                                    enableInfiniteScroll: true,
                                    scrollDirection: Axis.horizontal,
                                    autoPlay: false,
                                    onPageChanged: (index, _) =>
                                        _model.carouselCurrentIndex2 = index,
                                  ),
                                ),
                              ),

                              // EACH CAROUSEL must be 7 alignment appart
                              Align(
                                alignment: const AlignmentDirectional(0.0, -0.7),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 200.0,
                                  child: CarouselSlider(
                                    items: [
                                      Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFC6C6C6),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          border: Border.all(
                                            width: 1.0,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/New_Piskel.png',
                                            width: 200.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFC6C6C6),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          border: Border.all(
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFC6C6C6),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          border: Border.all(
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                    carouselController:
                                        _model.carouselController3 ??=
                                            CarouselSliderController(),
                                    options: CarouselOptions(
                                      initialPage: 1,
                                      viewportFraction: 0.5,
                                      disableCenter: true,
                                      enlargeCenterPage: true,
                                      enlargeFactor: 0.25,
                                      enableInfiniteScroll: true,
                                      scrollDirection: Axis.horizontal,
                                      autoPlay: false,
                                      onPageChanged: (index, _) =>
                                          _model.carouselCurrentIndex3 = index,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.7),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 200.0,
                                  child: CarouselSlider(
                                    items: [
                                      Stack(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFC6C6C6),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                              border: Border.all(
                                                width: 1.0,
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/Sword_Upgrade_1.png',
                                                width: 200.0,
                                                height: 200.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFC6C6C6),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          border: Border.all(
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFC6C6C6),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          border: Border.all(
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                    carouselController:
                                        _model.carouselController4 ??=
                                            CarouselSliderController(),
                                    options: CarouselOptions(
                                      initialPage: 1,
                                      viewportFraction: 0.5,
                                      disableCenter: true,
                                      enlargeCenterPage: true,
                                      enlargeFactor: 0.25,
                                      enableInfiniteScroll: true,
                                      scrollDirection: Axis.horizontal,
                                      autoPlay: false,
                                      onPageChanged: (index, _) =>
                                          _model.carouselCurrentIndex4 = index,
                                    ),
                                  ),
                                ),
                              ),
                            ]
                                .divide(const SizedBox(height: 15.0))
                                .around(const SizedBox(height: 15.0)),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0.0, 0),
                      child: FlutterFlowButtonTabBar(
                        useToggleButtonStyle: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Inter Tight',
                                  letterSpacing: 0.0,
                                ),
                        unselectedLabelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Inter Tight',
                                  letterSpacing: 0.0,
                                ),
                        labelColor: FlutterFlowTheme.of(context).primaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        backgroundColor: FlutterFlowTheme.of(context).accent1,
                        unselectedBackgroundColor:
                            FlutterFlowTheme.of(context).alternate,
                        borderColor: FlutterFlowTheme.of(context).primary,
                        unselectedBorderColor:
                            FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        elevation: 0.0,
                        buttonMargin:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        tabs: const [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.calendar_today,
                                size: 32.0,
                              ),
                              Tab(
                                text: '',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home,
                                size: 32.0,
                              ),
                              Tab(
                                text: '',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart_sharp,
                                size: 32.0,
                              ),
                              Tab(
                                text: '',
                              ),
                            ],
                          ),
                        ],
                        controller: _model.tabBarController1,
                        onTap: (i) async {
                          [() async {}, () async {}, () async {}][i]();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
