import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({
    super.key,
    required this.infoText,
  });

  final String? infoText;

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());

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
                'Spaced Out - Privacy Policy\nLast updated: 4/22/2025\n\nHey there! Your privacy is super important to us at Spaced Out. This Privacy Policy explains what info we collect, why we collect it, and how we keep it safe. If you’ve got any questions, feel free to reach out!\n\n1. What Info Do We Collect?\nWhen you use Spaced Out, here’s what we collect:\n\nYour email address: We need this so you can sign up, log in, and get updates.\n\nYour password: Don’t worry—we only store a super-secure, encrypted version. You’re the only one who can access it.\n\nYour tasks: These are your reminders, to-dos, and any other content you create inside the app. These are yours, and we keep them safe for you.\n\n2. Why Do We Collect This Info?\nWe collect this info to make Spaced Out work for you:\n\nTo create your account and let you log in.\n\nTo store your tasks and reminders, so you can access them anytime, anywhere.\n\nTo send you updates about new features or improvements to the app (if you opt in, of course!).\n\n3. How Do We Keep Your Info Safe?\nYour data is in good hands! We use industry-standard security measures to keep your email, password, and tasks protected. Your password is encrypted, so even we can’t see it—only you can access it.\n\nWhile we do everything we can to protect your info, please remember that no system is 100% secure. Always use strong, unique passwords to keep your account extra safe.\n\n4. Do We Share Your Data?\nNope! We don’t sell, rent, or trade your data with anyone. We value your privacy, and your info stays with us. The only time we’d share your data is if it’s required by law (like if we get a subpoena from the authorities), but that’s a rare situation, and we’d let you know if anything like that happens.\n\n5. How Long Do We Keep Your Info?\nWe’ll keep your account info and tasks for as long as you’re using Spaced Out. If you decide to delete your account, we’ll remove your data from our systems, but it might take a little time to fully clear out.\n\n6. Can You Access or Delete Your Info?\nOf course! You can access your tasks and personal data at any time. If you ever want to delete your account or make any changes, just let us know, and we’ll take care of it.\n\n7. Updates to This Privacy Policy\nWe might update this Privacy Policy from time to time. If we do, we’ll post the changes here, so keep an eye on this page. If the changes are big, we’ll try to give you a heads-up.\n\n8. Contact Us\nGot any questions about your privacy? We’re all ears! Reach out to us at task.nova.dev@gmail.com. We’re here to help.',
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
