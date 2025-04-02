import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'full_health_bar_model.dart';
export 'full_health_bar_model.dart';

/// This is the front piece of the health bar.
///
/// It will dynamically shrink based on the overall health of the object.
class FullHealthBarWidget extends StatefulWidget {
  const FullHealthBarWidget({
    super.key,
    required this.health,
    required this.maxHealth,
  });

  /// The overall health of the object
  final double? health;

  /// The max health the object can have
  final double? maxHealth;

  @override
  State<FullHealthBarWidget> createState() => _FullHealthBarWidgetState();
}

class _FullHealthBarWidgetState extends State<FullHealthBarWidget> {
  late FullHealthBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FullHealthBarModel());

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
      width: ((widget.health!) / (widget.maxHealth!)) * 140,
      height: 25.0,
      decoration: BoxDecoration(
        color: Color(0xFF00FF00),
      ),
    );
  }
}
