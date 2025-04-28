import '/components/astronaut/astronaut_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'equip_page_widget.dart' show EquipPageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class EquipPageModel extends FlutterFlowModel<EquipPageWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? equipPageWalkthroughController;
  // Model for astronaut component.
  late AstronautModel astronautModel;
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
  void initState(BuildContext context) {
    astronautModel = createModel(context, () => AstronautModel());
  }

  @override
  void dispose() {
    equipPageWalkthroughController?.finish();
    astronautModel.dispose();
  }
}
