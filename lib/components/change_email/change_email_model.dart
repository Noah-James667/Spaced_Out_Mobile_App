import '/flutter_flow/flutter_flow_util.dart';
import 'change_email_widget.dart' show ChangeEmailWidget;
import 'package:flutter/material.dart';

class ChangeEmailModel extends FlutterFlowModel<ChangeEmailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for newEmail widget.
  FocusNode? newEmailFocusNode;
  TextEditingController? newEmailTextController;
  String? Function(BuildContext, String?)? newEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newEmailFocusNode?.dispose();
    newEmailTextController?.dispose();
  }
}
