import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/edit_task/edit_task_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'task_model.dart';
export 'task_model.dart';

/// This is the task
class TaskWidget extends StatefulWidget {
  const TaskWidget({
    super.key,
    required this.taskDoc,
    required this.checkAction,
  });

  final TaskRecord? taskDoc;
  final Future Function()? checkAction;

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
      padding: EdgeInsetsDirectional.fromSTEB(24.0, 5.0, 24.0, 5.0),
      child: Container(
        width: 300.0,
        height: 70.0,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Theme(
              data: ThemeData(
                checkboxTheme: CheckboxThemeData(
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: CircleBorder(),
                ),
                unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
              ),
              child: Checkbox(
                value: _model.checkboxValue ??= widget.taskDoc!.isComplete,
                onChanged: (newValue) async {
                  safeSetState(() => _model.checkboxValue = newValue!);
                  if (newValue!) {
                    await widget.checkAction?.call();

                    await currentUserReference!.update({
                      ...mapToFirestore(
                        {
                          'coins': FieldValue.increment(20),
                        },
                      ),
                    });
                  } else {
                    await widget.checkAction?.call();
                  }
                },
                side: BorderSide(
                  width: 2,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                activeColor: FlutterFlowTheme.of(context).orangeWeb,
                checkColor: FlutterFlowTheme.of(context).info,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.taskDoc?.taskName,
                    'Title',
                  ),
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleMediumFamily),
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      dateTimeFormat(
                        "Md",
                        widget.taskDoc!.completeBy!,
                        locale: FFLocalizations.of(context).languageCode,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                    Text(
                      dateTimeFormat(
                        "jm",
                        widget.taskDoc!.completeTime!,
                        locale: FFLocalizations.of(context).languageCode,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ].divide(SizedBox(width: 5.0)),
                ),
              ],
            ),
            Spacer(),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.edit,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 20.0,
                ),
                onPressed: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: Container(
                          height: 600.0,
                          child: EditTaskWidget(
                            taskReference: widget.taskDoc!.reference,
                            taskName: widget.taskDoc!.taskName,
                            taskDescription: widget.taskDoc!.taskDescription,
                            dueDate: widget.taskDoc!.completeBy!,
                          ),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
              ),
            ),
          ].addToStart(SizedBox(width: 15.0)).addToEnd(SizedBox(width: 15.0)),
        ),
      ),
    );
  }
}
