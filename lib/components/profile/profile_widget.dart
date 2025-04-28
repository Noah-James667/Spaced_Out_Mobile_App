import '/auth/firebase_auth/auth_util.dart';
import '/components/change_password/change_password_widget.dart';
import '/components/privacy_policy/privacy_policy_widget.dart';
import '/components/terms_of_service/terms_of_service_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

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
      width: 300.0,
      height: 360.0,
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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  currentUserEmail,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        font: FlutterFlowTheme.of(context).labelLarge,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('PROFILE_COMP_CHANGE_PASSWORD_BTN_ON_TAP');
                  logFirebaseEvent('Button_bottom_sheet');
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: ChangePasswordWidget(),
                      );
                    },
                  ).then((value) => safeSetState(() {}));

                  logFirebaseEvent('Button_close_dialog_drawer_etc');
                  Navigator.pop(context);
                },
                text: 'Change Password',
                options: FFButtonOptions(
                  width: 175.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: FlutterFlowTheme.of(context).bodyMedium,
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
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('PROFILE_COMP_LOG_OUT_BTN_ON_TAP');
                  logFirebaseEvent('Button_auth');
                  GoRouter.of(context).prepareAuthEvent();
                  await authManager.signOut();
                  GoRouter.of(context).clearRedirectLocation();

                  context.goNamedAuth(
                      LoginPageWidget.routeName, context.mounted);
                },
                text: 'Log Out',
                options: FFButtonOptions(
                  width: 175.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).tertiary,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: FlutterFlowTheme.of(context).bodyMedium,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).black,
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
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('PROFILE_COMP_DELETE_ACCOUNT_BTN_ON_TAP');
                  logFirebaseEvent('Button_alert_dialog');
                  var confirmDialogResponse = await showDialog<bool>(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('Account Deletion'),
                            content: Text(
                                'Are you sure you want to delete this account?'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext, false),
                                child: Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext, true),
                                child: Text('Confirm'),
                              ),
                            ],
                          );
                        },
                      ) ??
                      false;
                  if (confirmDialogResponse) {
                    logFirebaseEvent('Button_auth');
                    await authManager.deleteUser(context);
                  } else {
                    return;
                  }

                  logFirebaseEvent('Button_navigate_to');

                  context.goNamed(LoginPageWidget.routeName);
                },
                text: 'Delete Account',
                options: FFButtonOptions(
                  width: 175.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).error,
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: FlutterFlowTheme.of(context).bodyLarge,
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('PROFILE_COMP_RESET_TUTORIALS_BTN_ON_TAP');
                    logFirebaseEvent('Button_alert_dialog');
                    var confirmDialogResponse = await showDialog<bool>(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Reset Tutorials?'),
                              content: Text(
                                  'Are you sure you want to reset the tutorials so you can view them again?'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext, false),
                                  child: Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext, true),
                                  child: Text('Confirm'),
                                ),
                              ],
                            );
                          },
                        ) ??
                        false;
                    logFirebaseEvent('Button_update_app_state');
                    FFAppState().updateCompletedWalkthroughsStruct(
                      (e) => e
                        ..tasksPage = false
                        ..equipPage = false
                        ..shopPage = false
                        ..gamePage = false
                        ..agendaPage = false,
                    );
                    safeSetState(() {});
                  },
                  text: 'Reset Tutorials',
                  options: FFButtonOptions(
                    width: 175.0,
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF06ED20),
                    textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                          font: FlutterFlowTheme.of(context).bodyLarge,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).black,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('PROFILE_COMP_TERMS_BTN_ON_TAP');
                        logFirebaseEvent('Button_bottom_sheet');
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
                                child: TermsOfServiceWidget(
                                  infoText:
                                      'Spaced Out - Terms of ServiceLast updated: 4/22/2025Hey there! Welcome to Spaced Out, the to-do list that\'s as fun as it is productive! By using the app, you’re agreeing to these Terms of Service. If that’s cool with you, let’s get started!1. What’s Spaced Out All About?Spaced Out is a free, gamified to-do list app designed to help you tackle your tasks while having a little fun. Whether you\'re a teen trying to get things done or a productivity nerd trying to stay on top of your game, we’ve got you covered.2. Who Can Use Spaced Out?We’re not picky when it comes to age—Spaced Out is for anyone who wants to be more productive and have fun doing it! However, if you\'re under 13, we suggest you use the app with some parental guidance.3. Your Account, Your RulesTo get started, you’ll need an email and a password. We only store your email and the tasks you create—your password is encrypted, so it’s safe with us! Just make sure you keep your login info secret. You’re in charge of your account, so if anything funky happens, it’s on you to keep it safe.4. Your Tasks = Your StuffWe love that you can create your own tasks and reminders—after all, they’re yours! Spaced Out doesn’t peek into your tasks or use them for anything sneaky. We just store them securely so you can keep track of everything.But hey, please don’t use Spaced Out to store anything shady or illegal. We want this to be a safe, positive space for all!5. Your Privacy is ImportantWe totally get that privacy matters. We only collect your email, your encrypted password, and your tasks—nothing else. And just so you know, we’ll never sell your data to anyone. Your info stays with you.For more deets, check out our Privacy Policy.6. Updates and ChangesWe might make some changes to Spaced Out every now and then, whether it’s adding new features or tweaking the ones you love. Don’t worry, we’ll try to give you a heads-up if it’s something big! Small updates? Those might sneak by without notice.7. Can You Leave? Of Course!If you ever want to delete your account, no hard feelings! You can do that at any time. We also reserve the right to pause or end accounts if they’re breaking the rules or causing trouble.8. We’re Not Responsible for EverythingSpaced Out is provided “as is.” We do our best to keep everything running smoothly, but we’re not responsible for any data loss or random glitches that may pop up. Use the app at your own risk!9. Questions? Let’s Chat!Got any questions or just want to chat? Reach out to us at task.nova.dev@gmail.com. We’re always here to help!',
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      text: 'Terms',
                      options: FFButtonOptions(
                        height: 29.3,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0x0039DEEF),
                        textStyle: FlutterFlowTheme.of(context)
                            .bodySmall
                            .override(
                              font: FlutterFlowTheme.of(context).bodySmall,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 8.0,
                              letterSpacing: 0.0,
                              decoration: TextDecoration.underline,
                            ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'PROFILE_COMP_PRIVACY_POLICY_BTN_ON_TAP');
                        logFirebaseEvent('Button_bottom_sheet');
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
                                child: PrivacyPolicyWidget(
                                  infoText: '',
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      text: 'Privacy Policy',
                      options: FFButtonOptions(
                        height: 29.3,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0x0039DEEF),
                        textStyle: FlutterFlowTheme.of(context)
                            .bodySmall
                            .override(
                              font: FlutterFlowTheme.of(context).bodySmall,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 8.0,
                              letterSpacing: 0.0,
                              decoration: TextDecoration.underline,
                            ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ].divide(SizedBox(height: 15.0)),
      ),
    );
  }
}
