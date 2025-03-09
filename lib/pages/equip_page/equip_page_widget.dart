import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'equip_page_model.dart';
export 'equip_page_model.dart';

class EquipPageWidget extends StatefulWidget {
  const EquipPageWidget({super.key});

  static String routeName = 'equipPage';
  static String routePath = '/equipPage';

  @override
  State<EquipPageWidget> createState() => _EquipPageWidgetState();
}

class _EquipPageWidgetState extends State<EquipPageWidget> {
  late EquipPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EquipPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'equipPage'});
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
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 200.0,
                        height: 200.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(
                            width: 1.0,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/AS_1_(1).png',
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(
                                color: Color(0xFE000000),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text(
                                'Weapons',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.7),
                        child: Container(
                          width: double.infinity,
                          height: 180.0,
                          child: CarouselSlider(
                            items: [
                              Container(
                                width: 100.0,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC6C6C6),
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(
                                    width: 1.0,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://picsum.photos/seed/879/600',
                                          width: 200.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC6C6C6),
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(
                                    width: 1.0,
                                  ),
                                ),
                                child: Stack(
                                  children: [],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC6C6C6),
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(
                                    width: 1.0,
                                  ),
                                ),
                                child: Stack(
                                  children: [],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFC6C6C6),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        border: Border.all(
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                            carouselController: _model.carouselController1 ??=
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
                      Container(
                        width: double.infinity,
                        height: 25.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryText,
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'Cosmetics',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -0.7),
                        child: Container(
                          width: double.infinity,
                          height: 180.0,
                          child: CarouselSlider(
                            items: [
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC6C6C6),
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(
                                    width: 1.0,
                                  ),
                                ),
                                child: Stack(
                                  children: [],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC6C6C6),
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(
                                    width: 1.0,
                                  ),
                                ),
                                child: Stack(
                                  children: [],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC6C6C6),
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(
                                    width: 1.0,
                                  ),
                                ),
                                child: Stack(
                                  children: [],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFC6C6C6),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        border: Border.all(
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFC6C6C6),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        border: Border.all(
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFC6C6C6),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        border: Border.all(
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFC6C6C6),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        border: Border.all(
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                            carouselController: _model.carouselController2 ??=
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
                      ),
                      Container(
                        width: double.infinity,
                        height: 25.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryText,
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'Ships',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 200.0,
                        child: CarouselSlider(
                          items: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6C6C6),
                                      borderRadius: BorderRadius.circular(24.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                          carouselController: _model.carouselController3 ??=
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
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 200.0,
                          child: CarouselSlider(
                            items: [
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC6C6C6),
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC6C6C6),
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFC6C6C6),
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ],
                            carouselController: _model.carouselController4 ??=
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
                        .divide(SizedBox(height: 15.0))
                        .around(SizedBox(height: 15.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
