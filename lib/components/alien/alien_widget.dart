import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'alien_model.dart';
export 'alien_model.dart';

class AlienWidget extends StatefulWidget {
  const AlienWidget({super.key});

  @override
  State<AlienWidget> createState() => _AlienWidgetState();
}

class _AlienWidgetState extends State<AlienWidget> {
  late AlienModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlienModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/images/alienBat.png',
            width: 200.0,
            height: 200.0,
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/images/wiggleMonster.png',
            width: 200.0,
            height: 200.0,
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/images/floatEye.png',
            width: 200.0,
            height: 200.0,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
