import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'shop_test_model.dart';
export 'shop_test_model.dart';

/// Testing page for shop tab
class ShopTestWidget extends StatefulWidget {
  const ShopTestWidget({super.key});

  @override
  State<ShopTestWidget> createState() => _ShopTestWidgetState();
}

class _ShopTestWidgetState extends State<ShopTestWidget> {
  late ShopTestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopTestModel());

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
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.2),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 200.0,
                  child: CarouselSlider(
                    items: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/New_Piskel.png',
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
                        child: Image.asset(
                          'assets/images/mwmx0_600',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
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
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
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
                        ],
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
                        child: Image.asset(
                          'assets/images/mwmx0_600',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
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
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
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
                        ],
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
                        child: Image.asset(
                          'assets/images/mwmx0_600',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
