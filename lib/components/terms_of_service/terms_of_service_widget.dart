import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'terms_of_service_model.dart';
export 'terms_of_service_model.dart';

class TermsOfServiceWidget extends StatefulWidget {
  const TermsOfServiceWidget({
    super.key,
    required this.infoText,
  });

  final String? infoText;

  @override
  State<TermsOfServiceWidget> createState() => _TermsOfServiceWidgetState();
}

class _TermsOfServiceWidgetState extends State<TermsOfServiceWidget> {
  late TermsOfServiceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsOfServiceModel());

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
      height: 300.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          width: 4.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(6.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                'Spaced Out - Terms of Service\nLast updated: 4/22/2025\n\nHey there! Welcome to Spaced Out, the to-do list that\'s as fun as it is productive! By using the app, you’re agreeing to these Terms of Service. If that’s cool with you, let’s get started!\n\n1. What’s Spaced Out All About?\nSpaced Out is a free, gamified to-do list app designed to help you tackle your tasks while having a little fun. Whether you\'re a teen trying to get things done or a productivity nerd trying to stay on top of your game, we’ve got you covered.\n\n2. Who Can Use Spaced Out?\nWe’re not picky when it comes to age—Spaced Out is for anyone who wants to be more productive and have fun doing it! However, if you\'re under 13, we suggest you use the app with some parental guidance.\n\n3. Your Account, Your Rules\nTo get started, you’ll need an email and a password. We only store your email and the tasks you create—your password is encrypted, so it’s safe with us! Just make sure you keep your login info secret. You’re in charge of your account, so if anything funky happens, it’s on you to keep it safe.\n\n4. Your Tasks = Your Stuff\nWe love that you can create your own tasks and reminders—after all, they’re yours! Spaced Out doesn’t peek into your tasks or use them for anything sneaky. We just store them securely so you can keep track of everything.\n\nBut hey, please don’t use Spaced Out to store anything shady or illegal. We want this to be a safe, positive space for all!\n\n5. Your Privacy is Important\nWe totally get that privacy matters. We only collect your email, your encrypted password, and your tasks—nothing else. And just so you know, we’ll never sell your data to anyone. Your info stays with you.\n\nFor more deets, check out our Privacy Policy.\n\n6. Updates and Changes\nWe might make some changes to Spaced Out every now and then, whether it’s adding new features or tweaking the ones you love. Don’t worry, we’ll try to give you a heads-up if it’s something big! Small updates? Those might sneak by without notice.\n\n7. Can You Leave? Of Course!\nIf you ever want to delete your account, no hard feelings! You can do that at any time. We also reserve the right to pause or end accounts if they’re breaking the rules or causing trouble.\n\n8. We’re Not Responsible for Everything\nSpaced Out is provided “as is.” We do our best to keep everything running smoothly, but we’re not responsible for any data loss or random glitches that may pop up. Use the app at your own risk!\n\n9. Questions? Let’s Chat!\nGot any questions or just want to chat? Reach out to us at task.nova.dev@gmail.com. We’re always here to help!',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      font: GoogleFonts.roboto(
                        fontWeight: FontWeight.normal,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
