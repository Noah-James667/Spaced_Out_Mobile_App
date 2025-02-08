import '/components/nav_bar_with_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'nav_bar_example1_model.dart';
export 'nav_bar_example1_model.dart';

class NavBarExample1Widget extends StatefulWidget {
  const NavBarExample1Widget({super.key});

  @override
  State<NavBarExample1Widget> createState() => _NavBarExample1WidgetState();
}

class _NavBarExample1WidgetState extends State<NavBarExample1Widget> {
  late NavBarExample1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarExample1Model());

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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              wrapWithModel(
                model: _model.navBarWithMiddleButtonModel,
                updateCallback: () => safeSetState(() {}),
                child: const NavBarWithMiddleButtonWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
