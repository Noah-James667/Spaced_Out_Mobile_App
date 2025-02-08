import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'shop_popup_model.dart';
export 'shop_popup_model.dart';

class ShopPopupWidget extends StatefulWidget {
  const ShopPopupWidget({super.key});

  @override
  State<ShopPopupWidget> createState() => _ShopPopupWidgetState();
}

class _ShopPopupWidgetState extends State<ShopPopupWidget> {
  late ShopPopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopPopupModel());

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
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 40.0,
                  fillColor: const Color(0x004B39EF),
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 200.0,
              child: CarouselSlider(
                items: [
                  Stack(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 3.0),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD6D6D6),
                            borderRadius: BorderRadius.circular(24.0),
                            border: Border.all(
                              width: 1.0,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/New_Piskel.png',
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD6D6D6),
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(
                            width: 1.0,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/2vqf7_',
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
                          color: const Color(0xFFD6D6D6),
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 3.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/topHat.png',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD6D6D6),
                      borderRadius: BorderRadius.circular(24.0),
                      border: Border.all(
                        width: 1.0,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/pirateHat.png',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
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
            SizedBox(
              width: double.infinity,
              height: 200.0,
              child: CarouselSlider(
                items: [
                  Stack(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD6D6D6),
                            borderRadius: BorderRadius.circular(24.0),
                            border: Border.all(
                              width: 1.0,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Sword_Upgrade_1.png',
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD6D6D6),
                            borderRadius: BorderRadius.circular(22.0),
                            border: Border.all(
                              width: 1.0,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'projects/task-nova-1vgq59/assets/gwwypw1i5epj/Sword_Upgrade_1.png',
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD6D6D6),
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(
                            width: 1.0,
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
            SizedBox(
              width: double.infinity,
              height: 200.0,
              child: CarouselSlider(
                items: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/mwmx0_600',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/mwmx0_600',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://picsum.photos/seed/89/600',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
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
          ],
        ),
      ),
    );
  }
}
