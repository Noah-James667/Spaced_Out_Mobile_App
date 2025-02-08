import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'task_model.dart';
export 'task_model.dart';

/// This is the task
class TaskWidget extends StatefulWidget {
  const TaskWidget({
    super.key,
    required this.taskText,
    required this.checked,
  });

  final String? taskText;
  final bool? checked;

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  late TaskModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(24.0, 5.0, 24.0, 5.0),
      child: Container(
        width: 300.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(
            width: 2.0,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Theme(
              data: ThemeData(
                checkboxTheme: const CheckboxThemeData(
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: CircleBorder(),
                ),
                unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
              ),
              child: Checkbox(
                value: _model.checkboxValue ??= widget.checked!,
                onChanged: (newValue) async {
                  safeSetState(() => _model.checkboxValue = newValue!);
                },
                side: BorderSide(
                  width: 2,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                activeColor: FlutterFlowTheme.of(context).accent2,
                checkColor: FlutterFlowTheme.of(context).info,
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget.taskText,
                'task',
              ),
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Inter Tight',
                    letterSpacing: 0.0,
                  ),
            ),
          ].addToStart(const SizedBox(width: 15.0)).addToEnd(const SizedBox(width: 15.0)),
        ),
      ),
    );
  }
}
