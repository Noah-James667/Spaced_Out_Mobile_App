import '/components/nav_bar_with_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nav_bar_example1_widget.dart' show NavBarExample1Widget;
import 'package:flutter/material.dart';

class NavBarExample1Model extends FlutterFlowModel<NavBarExample1Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBarWithMiddleButton component.
  late NavBarWithMiddleButtonModel navBarWithMiddleButtonModel;

  @override
  void initState(BuildContext context) {
    navBarWithMiddleButtonModel =
        createModel(context, () => NavBarWithMiddleButtonModel());
  }

  @override
  void dispose() {
    navBarWithMiddleButtonModel.dispose();
  }
}
