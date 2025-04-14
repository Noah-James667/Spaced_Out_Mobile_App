import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/edit_task/edit_task_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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

class _TaskWidgetState extends State<TaskWidget> with TickerProviderStateMixin {
  late TaskModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeOut,
            delay: 100.0.ms,
            duration: 330.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(100.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    logFirebaseEvent(
                        'TASK_COMP_Checkbox_byo01zxd_ON_TOGGLE_ON');
                    logFirebaseEvent('Checkbox_widget_animation');
                    if (animationsMap['containerOnActionTriggerAnimation'] !=
                        null) {
                      await animationsMap['containerOnActionTriggerAnimation']!
                          .controller
                          .forward(from: 0.0);
                    }
                    logFirebaseEvent('Checkbox_execute_callback');
                    await widget.checkAction?.call();
                    if (widget.taskDoc!.completeBy! < getCurrentTimestamp) {
                      if (widget.taskDoc?.difficultyLvl == 1) {
                        logFirebaseEvent('Checkbox_backend_call');

                        await currentUserReference!.update({
                          ...mapToFirestore(
                            {
                              'coins': FieldValue.increment(10),
                              'xp': FieldValue.increment(10),
                            },
                          ),
                        });
                      } else {
                        if (widget.taskDoc?.difficultyLvl == 2) {
                          logFirebaseEvent('Checkbox_backend_call');

                          await currentUserReference!.update({
                            ...mapToFirestore(
                              {
                                'coins': FieldValue.increment(20),
                                'xp': FieldValue.increment(20),
                              },
                            ),
                          });
                        } else {
                          logFirebaseEvent('Checkbox_backend_call');

                          await currentUserReference!.update({
                            ...mapToFirestore(
                              {
                                'coins': FieldValue.increment(30),
                                'xp': FieldValue.increment(30),
                              },
                            ),
                          });
                        }
                      }
                    } else {
                      if (widget.taskDoc?.difficultyLvl == 1) {
                        logFirebaseEvent('Checkbox_backend_call');

                        await currentUserReference!.update({
                          ...mapToFirestore(
                            {
                              'coins': FieldValue.increment(5),
                              'xp': FieldValue.increment(5),
                            },
                          ),
                        });
                      } else {
                        if (widget.taskDoc?.difficultyLvl == 2) {
                          logFirebaseEvent('Checkbox_backend_call');

                          await currentUserReference!.update({
                            ...mapToFirestore(
                              {
                                'coins': FieldValue.increment(10),
                                'xp': FieldValue.increment(10),
                              },
                            ),
                          });
                        } else {
                          logFirebaseEvent('Checkbox_backend_call');

                          await currentUserReference!.update({
                            ...mapToFirestore(
                              {
                                'coins': FieldValue.increment(15),
                                'xp': FieldValue.increment(15),
                              },
                            ),
                          });
                        }
                      }
                    }
                  } else {
                    logFirebaseEvent('TASK_Checkbox_byo01zxd_ON_TOGGLE_OFF');
                    logFirebaseEvent('Checkbox_widget_animation');
                    if (animationsMap['containerOnActionTriggerAnimation'] !=
                        null) {
                      await animationsMap['containerOnActionTriggerAnimation']!
                          .controller
                          .forward(from: 0.0);
                    }
                    logFirebaseEvent('Checkbox_execute_callback');
                    await widget.checkAction?.call();
                    if (widget.taskDoc?.difficultyLvl == 1) {
                      logFirebaseEvent('Checkbox_backend_call');

                      await currentUserReference!.update({
                        ...mapToFirestore(
                          {
                            'coins': FieldValue.increment(-(10)),
                            'xp': FieldValue.increment(-(30)),
                          },
                        ),
                      });
                    } else {
                      if (widget.taskDoc?.difficultyLvl == 2) {
                        logFirebaseEvent('Checkbox_backend_call');

                        await currentUserReference!.update({
                          ...mapToFirestore(
                            {
                              'coins': FieldValue.increment(-(20)),
                              'xp': FieldValue.increment(-(30)),
                            },
                          ),
                        });
                      } else {
                        logFirebaseEvent('Checkbox_backend_call');

                        await currentUserReference!.update({
                          ...mapToFirestore(
                            {
                              'coins': FieldValue.increment(-(30)),
                              'xp': FieldValue.increment(-(30)),
                            },
                          ),
                        });
                      }
                    }
                  }
                },
                side: BorderSide(
                  width: 2,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                activeColor: FlutterFlowTheme.of(context).primary,
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
                  ).maybeHandleOverflow(
                    maxChars: 19,
                    replacement: '…',
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyLargeFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyLargeFamily),
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        dateTimeFormat(
                          "Md",
                          widget.taskDoc?.completeBy,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        '[Md]',
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
                  logFirebaseEvent('TASK_COMP_edit_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_bottom_sheet');
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
                            taskName: widget.taskDoc?.taskName,
                            taskDescription: widget.taskDoc?.taskDescription,
                            dueDate: widget.taskDoc?.completeBy,
                            doesRepeat: widget.taskDoc?.isRepeating,
                            taskDifficulty:
                                widget.taskDoc?.difficultyLvl.toString(),
                            daysRepeating: widget.taskDoc!.daysRepeating,
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
      ).animateOnActionTrigger(
        animationsMap['containerOnActionTriggerAnimation']!,
      ),
    );
  }
}
