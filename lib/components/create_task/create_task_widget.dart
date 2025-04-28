import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'create_task_model.dart';
export 'create_task_model.dart';

class CreateTaskWidget extends StatefulWidget {
  const CreateTaskWidget({super.key});

  @override
  State<CreateTaskWidget> createState() => _CreateTaskWidgetState();
}

class _CreateTaskWidgetState extends State<CreateTaskWidget> {
  late CreateTaskModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateTaskModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.switchValue = false;
    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
          border: Border.all(
            width: 4.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(6.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: Color(0x004B39EF),
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('CREATE_TASK_COMP_close_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_bottom_sheet');
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 64.0,
                      height: 64.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/check.gif',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Add task',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: FlutterFlowTheme.of(context).bodyLarge,
                        letterSpacing: 0.0,
                      ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Container(
                    width: double.infinity,
                    child: TextFormField(
                      controller: _model.textController1,
                      focusNode: _model.textFieldFocusNode1,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Task Name',
                        labelStyle: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              font: FlutterFlowTheme.of(context).labelMedium,
                              letterSpacing: 0.0,
                            ),
                        hintText: 'Task Name',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelLarge.override(
                                  font: FlutterFlowTheme.of(context).labelLarge,
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: FlutterFlowTheme.of(context).labelMedium,
                            letterSpacing: 0.0,
                          ),
                      maxLength: 30,
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                      validator:
                          _model.textController1Validator.asValidator(context),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'CREATE_TASK_COMP_dueDateAndTime_ON_TAP');
                        logFirebaseEvent('dueDateAndTime_date_time_picker');
                        final _datePicked1Date = await showDatePicker(
                          context: context,
                          initialDate: (_model.datePicked2 ?? DateTime.now()),
                          firstDate: (_model.datePicked2 ?? DateTime.now()),
                          lastDate: DateTime(2050),
                          builder: (context, child) {
                            return wrapInMaterialDatePickerTheme(
                              context,
                              child!,
                              headerBackgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              headerForegroundColor:
                                  FlutterFlowTheme.of(context).info,
                              headerTextStyle: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    font: FlutterFlowTheme.of(context)
                                        .headlineLarge,
                                    fontSize: 32.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              pickerBackgroundColor:
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              pickerForegroundColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              selectedDateTimeBackgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              selectedDateTimeForegroundColor:
                                  FlutterFlowTheme.of(context).info,
                              actionButtonForegroundColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 24.0,
                            );
                          },
                        );

                        TimeOfDay? _datePicked1Time;
                        if (_datePicked1Date != null) {
                          _datePicked1Time = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.fromDateTime(
                                (_model.datePicked2 ?? DateTime.now())),
                            builder: (context, child) {
                              return wrapInMaterialTimePickerTheme(
                                context,
                                child!,
                                headerBackgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                                headerForegroundColor:
                                    FlutterFlowTheme.of(context).info,
                                headerTextStyle: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .headlineLarge,
                                      fontSize: 32.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                pickerBackgroundColor:
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                pickerForegroundColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                selectedDateTimeBackgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                                selectedDateTimeForegroundColor:
                                    FlutterFlowTheme.of(context).info,
                                actionButtonForegroundColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 24.0,
                              );
                            },
                          );
                        }

                        if (_datePicked1Date != null &&
                            _datePicked1Time != null) {
                          safeSetState(() {
                            _model.datePicked1 = DateTime(
                              _datePicked1Date.year,
                              _datePicked1Date.month,
                              _datePicked1Date.day,
                              _datePicked1Time!.hour,
                              _datePicked1Time.minute,
                            );
                          });
                        } else if (_model.datePicked1 != null) {
                          safeSetState(() {
                            _model.datePicked1 = _model.datePicked2;
                          });
                        }
                      },
                      text: dateTimeFormat(
                        "M/d h:mm a",
                        _model.datePicked1,
                        locale: FFLocalizations.of(context).languageCode,
                      ),
                      icon: Icon(
                        Icons.calendar_month,
                        size: 20.0,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.white,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: FlutterFlowTheme.of(context).titleSmall,
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    if (_model.switchValue ?? true)
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('CREATE_TASK_COMP_dueTime_ON_TAP');
                          logFirebaseEvent('dueTime_date_time_picker');

                          final _datePicked2Time = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.fromDateTime(
                                (FFAppState().defaultTime ?? DateTime.now())),
                            builder: (context, child) {
                              return wrapInMaterialTimePickerTheme(
                                context,
                                child!,
                                headerBackgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                                headerForegroundColor:
                                    FlutterFlowTheme.of(context).info,
                                headerTextStyle: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .headlineLarge,
                                      fontSize: 32.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                pickerBackgroundColor:
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                pickerForegroundColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                selectedDateTimeBackgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                                selectedDateTimeForegroundColor:
                                    FlutterFlowTheme.of(context).info,
                                actionButtonForegroundColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 24.0,
                              );
                            },
                          );
                          if (_datePicked2Time != null) {
                            safeSetState(() {
                              _model.datePicked2 = DateTime(
                                (FFAppState().defaultTime ?? DateTime.now())
                                    .year,
                                (FFAppState().defaultTime ?? DateTime.now())
                                    .month,
                                (FFAppState().defaultTime ?? DateTime.now())
                                    .day,
                                _datePicked2Time.hour,
                                _datePicked2Time.minute,
                              );
                            });
                          } else if (_model.datePicked2 != null) {
                            safeSetState(() {
                              _model.datePicked2 = FFAppState().defaultTime;
                            });
                          }
                        },
                        text: dateTimeFormat(
                          "jm",
                          _model.datePicked2,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        icon: Icon(
                          Icons.timer_sharp,
                          size: 20.0,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Colors.white,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                font: FlutterFlowTheme.of(context).bodyLarge,
                                letterSpacing: 0.0,
                              ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (_model.switchValue ?? true)
                      Expanded(
                        child: FlutterFlowChoiceChips(
                          options: [
                            ChipData('Sunday'),
                            ChipData('Monday'),
                            ChipData('Tuesday'),
                            ChipData('Wednesday'),
                            ChipData('Thursday'),
                            ChipData('Friday'),
                            ChipData('Saturday')
                          ],
                          onChanged: (val) => safeSetState(
                              () => _model.choiceChipsValues = val),
                          selectedChipStyle: ChipStyle(
                            backgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyMedium,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                ),
                            iconColor: FlutterFlowTheme.of(context).info,
                            iconSize: 16.0,
                            elevation: 0.0,
                            borderColor:
                                FlutterFlowTheme.of(context).primaryText,
                            borderWidth: 1.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          unselectedChipStyle: ChipStyle(
                            backgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: FlutterFlowTheme.of(context).bodyMedium,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                            iconColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            iconSize: 16.0,
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          chipSpacing: 1.0,
                          rowSpacing: 8.0,
                          multiselect: true,
                          initialized: _model.choiceChipsValues != null,
                          alignment: WrapAlignment.start,
                          controller: _model.choiceChipsValueController ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          wrapped: true,
                        ),
                      ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Does the task repeat?',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: FlutterFlowTheme.of(context).bodyLarge,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Icon(
                      Icons.repeat_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    Switch.adaptive(
                      value: _model.switchValue!,
                      onChanged: (newValue) async {
                        safeSetState(() => _model.switchValue = newValue);
                      },
                      activeColor: FlutterFlowTheme.of(context).primary,
                      activeTrackColor: FlutterFlowTheme.of(context).alternate,
                      inactiveTrackColor:
                          FlutterFlowTheme.of(context).alternate,
                      inactiveThumbColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ],
                ),
                FlutterFlowDropDown<String>(
                  controller: _model.dropDownValueController1 ??=
                      FormFieldController<String>(null),
                  options: ['Personal', 'Assignment', 'Project'],
                  onChanged: (val) =>
                      safeSetState(() => _model.dropDownValue1 = val),
                  width: double.infinity,
                  height: 40.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: FlutterFlowTheme.of(context).bodyMedium,
                        letterSpacing: 0.0,
                      ),
                  hintText: 'Task Type',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 2.0,
                  borderColor: Colors.black,
                  borderWidth: 2.0,
                  borderRadius: 8.0,
                  margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  hidesUnderline: true,
                  isOverButton: false,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
                FlutterFlowDropDown<int>(
                  controller: _model.dropDownValueController2 ??=
                      FormFieldController<int>(
                    _model.dropDownValue2 ??= 1,
                  ),
                  options: List<int>.from([1, 2, 3]),
                  optionLabels: ['Easy', 'Medium', 'Hard'],
                  onChanged: (val) =>
                      safeSetState(() => _model.dropDownValue2 = val),
                  width: double.infinity,
                  height: 40.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: FlutterFlowTheme.of(context).bodyMedium,
                        letterSpacing: 0.0,
                      ),
                  hintText: 'Task Difficulty',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 2.0,
                  borderColor: Colors.black,
                  borderWidth: 2.0,
                  borderRadius: 8.0,
                  margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  hidesUnderline: true,
                  isOverButton: false,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: TextFormField(
                      controller: _model.textController2,
                      focusNode: _model.textFieldFocusNode2,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelStyle: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              font: FlutterFlowTheme.of(context).labelMedium,
                              letterSpacing: 0.0,
                            ),
                        hintText: 'Task Description',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelLarge.override(
                                  font: FlutterFlowTheme.of(context).labelLarge,
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: FlutterFlowTheme.of(context).labelMedium,
                            letterSpacing: 0.0,
                          ),
                      maxLines: 5,
                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                      validator:
                          _model.textController2Validator.asValidator(context),
                    ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('CREATE_TASK_COMP_ADD_TASK_BTN_ON_TAP');
                    final firestoreBatch = FirebaseFirestore.instance.batch();
                    try {
                      if (_model.switchValue == false) {
                        if (_model.datePicked1 != null) {
                          logFirebaseEvent('Button_backend_call');

                          firestoreBatch.set(TaskRecord.collection.doc(), {
                            ...createTaskRecordData(
                              user: currentUserReference,
                              taskName: _model.textController1.text,
                              taskDescription: _model.textController2.text,
                              isComplete: false,
                              isRepeating: _model.switchValue,
                              completeBy: _model.datePicked1,
                              completeDate: functions
                                  .returnDayMonthPicker(_model.datePicked1),
                              difficultyLvl: _model.dropDownValue2,
                              taskCategory: _model.dropDownValue1,
                            ),
                            ...mapToFirestore(
                              {
                                'complete_date_list': functions
                                    .wrapDateInList(_model.datePicked1!),
                              },
                            ),
                          });
                          logFirebaseEvent('Button_bottom_sheet');
                          Navigator.pop(context);
                        } else {
                          logFirebaseEvent('Button_alert_dialog');
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('unset value'),
                                content: Text('Your date and time is not set'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      } else {
                        if ((_model.datePicked2 != null) &&
                            (_model.choiceChipsValues?.firstOrNull != null &&
                                _model.choiceChipsValues?.firstOrNull != '')) {
                          logFirebaseEvent('Button_backend_call');

                          firestoreBatch.set(TaskRecord.collection.doc(), {
                            ...createTaskRecordData(
                              user: currentUserReference,
                              taskName: _model.textController1.text,
                              taskDescription: _model.textController2.text,
                              isComplete: false,
                              isRepeating: _model.switchValue,
                              completeBy: functions.getNextCompleteDate(
                                  _model.choiceChipsValues!.toList(),
                                  _model.datePicked2!),
                              completeDate: functions.getNextMonthDayYear(
                                  _model.choiceChipsValues!.toList()),
                              difficultyLvl: _model.dropDownValue2,
                              taskCategory: _model.dropDownValue1,
                            ),
                            ...mapToFirestore(
                              {
                                'days_repeating':
                                    _model.choiceChipsValues?.take(7).toList(),
                                'complete_date_list':
                                    functions.getUpcomingWeekdays(
                                        _model.choiceChipsValues!.toList()),
                              },
                            ),
                          });
                          logFirebaseEvent('Button_bottom_sheet');
                          Navigator.pop(context);
                        } else {
                          logFirebaseEvent('Button_alert_dialog');
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('unset value'),
                                content: Text('Your date and time is not set'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      }
                    } finally {
                      await firestoreBatch.commit();
                    }
                  },
                  text: 'Add Task',
                  options: FFButtonOptions(
                    width: 115.0,
                    height: 40.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                          font: FlutterFlowTheme.of(context).bodyLarge,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ].divide(SizedBox(height: 5.0)),
            ),
          ),
        ),
      ),
    );
  }
}
