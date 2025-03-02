import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'shop_widget.dart' show ShopWidget;
import 'package:flutter/material.dart';

class ShopModel extends FlutterFlowModel<ShopWidget> {
  ///  Local state fields for this page.
  /// default state
  int baseAstroState = 1;

  String cowboyAstroTest =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/task-nova-1vgq59/assets/kjcj9qdy7sg4/asWithCowboyHat.png';

  String baseImageTest =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/task-nova-1vgq59/assets/7gdczucwoc3f/AS_1_(1).png';

  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 1;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 1;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController3;
  int carouselCurrentIndex3 = 1;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController4;
  int carouselCurrentIndex4 = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
