import '/components/task_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_nav_bar_widget.dart' show MainNavBarWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MainNavBarModel extends FlutterFlowModel<MainNavBarWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay1;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay2;
  // Model for task component.
  late TaskModel taskModel;
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
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    taskModel = createModel(context, () => TaskModel());
  }

  @override
  void dispose() {
    tabBarController1?.dispose();
    tabBarController2?.dispose();
    taskModel.dispose();
  }
}
