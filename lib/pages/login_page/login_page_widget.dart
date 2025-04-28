import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/privacy_policy/privacy_policy_widget.dart';
import '/components/terms_of_service/terms_of_service_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  static String routeName = 'loginPage';
  static String routePath = '/loginPage';

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'loginPage'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.emailTextController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.passwordTextController1 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.confirmPasswordTextController0 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.emailTextController2 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.passwordTextController2 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        height: 350.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment(0.0, 0),
                              child: TabBar(
                                labelColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .labelLarge,
                                      letterSpacing: 0.0,
                                    ),
                                unselectedLabelStyle:
                                    FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          letterSpacing: 0.0,
                                        ),
                                indicatorColor:
                                    FlutterFlowTheme.of(context).primary,
                                tabs: [
                                  Tab(
                                    text: 'Sign Up',
                                  ),
                                  Tab(
                                    text: 'Login',
                                  ),
                                ],
                                controller: _model.tabBarController,
                                onTap: (i) async {
                                  [
                                    () async {
                                      logFirebaseEvent(
                                          'LOGIN_PAGE_PAGE_signup_ON_TAP');
                                      logFirebaseEvent(
                                          'signup_reset_form_fields');
                                      safeSetState(() {
                                        _model.emailTextController1?.clear();
                                        _model.passwordTextController1?.clear();
                                        _model.confirmPasswordTextController0
                                            ?.clear();
                                        _model.emailTextController2?.clear();
                                        _model.passwordTextController2?.clear();
                                      });
                                    },
                                    () async {
                                      logFirebaseEvent(
                                          'LOGIN_PAGE_PAGE_login_ON_TAP');
                                      logFirebaseEvent(
                                          'login_reset_form_fields');
                                      safeSetState(() {
                                        _model.emailTextController1?.clear();
                                        _model.passwordTextController1?.clear();
                                        _model.confirmPasswordTextController0
                                            ?.clear();
                                        _model.emailTextController2?.clear();
                                        _model.passwordTextController2?.clear();
                                      });
                                    }
                                  ][i]();
                                },
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 8.0, 24.0, 8.0),
                                        child: Container(
                                          width: 300.0,
                                          child: TextFormField(
                                            controller:
                                                _model.emailTextController1,
                                            focusNode:
                                                _model.textFieldFocusNode1,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                              hintText: 'Email...',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.roboto(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                            maxLength: 40,
                                            maxLengthEnforcement:
                                                MaxLengthEnforcement.enforced,
                                            buildCounter: (context,
                                                    {required currentLength,
                                                    required isFocused,
                                                    maxLength}) =>
                                                null,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            validator: _model
                                                .emailTextController1Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 8.0, 24.0, 8.0),
                                        child: Container(
                                          width: 300.0,
                                          child: TextFormField(
                                            controller:
                                                _model.passwordTextController1,
                                            focusNode:
                                                _model.textFieldFocusNode2,
                                            autofocus: false,
                                            textInputAction:
                                                TextInputAction.next,
                                            obscureText:
                                                !_model.passwordVisibility1,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              hintText: 'Password...',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              suffixIcon: InkWell(
                                                onTap: () => safeSetState(
                                                  () => _model
                                                          .passwordVisibility1 =
                                                      !_model
                                                          .passwordVisibility1,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _model.passwordVisibility1
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts.roboto(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                            maxLength: 100,
                                            maxLengthEnforcement:
                                                MaxLengthEnforcement.enforced,
                                            buildCounter: (context,
                                                    {required currentLength,
                                                    required isFocused,
                                                    maxLength}) =>
                                                null,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            validator: _model
                                                .passwordTextController1Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 8.0, 24.0, 8.0),
                                        child: Container(
                                          width: 300.0,
                                          child: TextFormField(
                                            controller: _model
                                                .confirmPasswordTextController0,
                                            focusNode:
                                                _model.textFieldFocusNode3,
                                            autofocus: false,
                                            textInputAction:
                                                TextInputAction.next,
                                            obscureText:
                                                !_model.passwordVisibility2,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              hintText: 'Confirm Password...',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              suffixIcon: InkWell(
                                                onTap: () => safeSetState(
                                                  () => _model
                                                          .passwordVisibility2 =
                                                      !_model
                                                          .passwordVisibility2,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _model.passwordVisibility2
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts.roboto(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                            maxLength: 100,
                                            maxLengthEnforcement:
                                                MaxLengthEnforcement.enforced,
                                            buildCounter: (context,
                                                    {required currentLength,
                                                    required isFocused,
                                                    maxLength}) =>
                                                null,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            validator: _model
                                                .confirmPasswordTextController0Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'LOGIN_PAGE_PAGE_signup_ON_TAP');
                                          logFirebaseEvent('signup_auth');
                                          GoRouter.of(context)
                                              .prepareAuthEvent();
                                          if (_model.passwordTextController1
                                                  .text !=
                                              _model
                                                  .confirmPasswordTextController0
                                                  .text) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Passwords don\'t match!',
                                                ),
                                              ),
                                            );
                                            return;
                                          }

                                          final user = await authManager
                                              .createAccountWithEmail(
                                            context,
                                            _model.emailTextController1.text,
                                            _model.passwordTextController1.text,
                                          );
                                          if (user == null) {
                                            return;
                                          }

                                          logFirebaseEvent(
                                              'signup_backend_call');

                                          await ShopItemsRecord.createDoc(
                                                  currentUserReference!)
                                              .set(createShopItemsRecordData(
                                            usersShopItems:
                                                currentUserReference,
                                            smallSword: false,
                                            bigSword: false,
                                            spaceSword: false,
                                            zapyGun: false,
                                            bigGun: false,
                                            cowboyHat: false,
                                            bowHat: false,
                                            pirateHat: false,
                                            topHat: false,
                                            mushroomHat: false,
                                            unicornHat: false,
                                            wizardHat: false,
                                            redPants: false,
                                            darkBluePants: false,
                                            greenPants: false,
                                            yellowPants: false,
                                            purplePants: false,
                                            lightBluePants: false,
                                            redShip: false,
                                            darkBlueShip: false,
                                            greenShip: false,
                                            yellowShip: false,
                                            purpleShip: false,
                                            lightBlueShip: false,
                                          ));
                                          logFirebaseEvent(
                                              'signup_backend_call');

                                          await currentUserReference!
                                              .update(createUserRecordData(
                                            xp: 5.0,
                                          ));
                                          logFirebaseEvent(
                                              'signup_update_app_state');
                                          FFAppState().smallSwordBought = 1.0;
                                          FFAppState().bigSwordBought = 1.0;
                                          FFAppState().spaceSwordBought = 1.0;
                                          FFAppState().zappyGunBought = 1.0;
                                          FFAppState().sniperBought = 1.0;
                                          FFAppState().cowboyHatBought = 1.0;
                                          FFAppState().bowHatBought = 1.0;
                                          FFAppState().pirateHatBought = 1.0;
                                          FFAppState().topHatBought = 1.0;
                                          FFAppState().mushroomHatBought = 1.0;
                                          FFAppState().unicornHatBought = 1.0;
                                          FFAppState().magicHatBought = 1.0;
                                          FFAppState().redPantsBought = 1.0;
                                          FFAppState().greenPantsBought = 1.0;
                                          FFAppState().bluePantsBought = 1.0;
                                          FFAppState().yellowPantsBought = 1.0;
                                          FFAppState().purplePantsBought = 1.0;
                                          FFAppState().cyanPantsBought = 1.0;
                                          FFAppState().blueShipBought = 1.0;
                                          FFAppState().redShipBought = 1.0;
                                          FFAppState().greenShipBought = 1.0;
                                          FFAppState().yellowShipBought = 1.0;
                                          FFAppState().purpleShipBought = 1.0;
                                          FFAppState().cyanShipBought = 1.0;
                                          FFAppState().smallSwordEquip = 0;
                                          FFAppState().smallSwordAvail = 0.5;
                                          FFAppState().bigSwordEquip = 0;
                                          FFAppState().bigSwordAvail = 0.5;
                                          FFAppState().spaceSwordEquip = 0;
                                          FFAppState().spaceSwordAvail = 0.5;
                                          FFAppState().zappyGunEquip = 0;
                                          FFAppState().zappyGunAvail = 0.5;
                                          FFAppState().cowboyHatEquip = 0;
                                          FFAppState().cowboyHatAvail = 0.5;
                                          FFAppState().bowHatEquip = 0;
                                          FFAppState().bowHatAvail = 0.5;
                                          FFAppState().pirateHatEquip = 0;
                                          FFAppState().pirateHatAvail = 0.5;
                                          FFAppState().topHatEquip = 0;
                                          FFAppState().topHatAvail = 0.5;
                                          FFAppState().mushroomHatEquip = 0;
                                          FFAppState().mushroomHatAvail = 0.5;
                                          FFAppState().unicornHatEquip = 0;
                                          FFAppState().unicornHatAvail = 0.5;
                                          FFAppState().sniperGunEquip = 0;
                                          FFAppState().sniperAvail = 0.5;
                                          FFAppState().magicHatEquip = 0;
                                          FFAppState().magicHatAvail = 0.5;
                                          FFAppState().redPantsEquip = 0;
                                          FFAppState().redPantsAvail = 0.5;
                                          FFAppState().redShipEquip = 0;
                                          FFAppState().redShipAvail = 0.5;
                                          FFAppState().bluePantsEquip = 0;
                                          FFAppState().bluePantsAvail = 0.5;
                                          FFAppState().blueShipEquip = 0;
                                          FFAppState().blueShipAvail = 0.5;
                                          FFAppState().greenShipEquip = 0;
                                          FFAppState().greenPantsEquip = 0;
                                          FFAppState().greenPantsAvail = 0.5;
                                          FFAppState().greenShipAvail = 0.5;
                                          FFAppState().yellowShipEquip = 0;
                                          FFAppState().yellowPantsEquip = 0;
                                          FFAppState().yellowPantsAvail = 0.5;
                                          FFAppState().yellowShipAvail = 0.5;
                                          FFAppState().purpleShipEquip = 0;
                                          FFAppState().purplePantsEquip = 0;
                                          FFAppState().purplePantsAvail = 0.5;
                                          FFAppState().purpleShipAvail = 0.5;
                                          FFAppState().cyanShipEquip = 0;
                                          FFAppState().cyanPantsEquip = 0;
                                          FFAppState().cyanPantsAvail = 0.5;
                                          FFAppState().cyanShipAvail = 0.5;
                                          logFirebaseEvent(
                                              'signup_update_app_state');
                                          FFAppState()
                                              .updateCompletedWalkthroughsStruct(
                                            (e) => e
                                              ..tasksPage = false
                                              ..equipPage = false
                                              ..shopPage = false
                                              ..gamePage = false
                                              ..agendaPage = false,
                                          );
                                          FFAppState().ArmrBtnOpacity = 0.5;
                                          FFAppState().DmgBtnOpacity = 0.5;
                                          safeSetState(() {});
                                          logFirebaseEvent(
                                              'signup_navigate_to');

                                          context.goNamedAuth(
                                            LoadingPageWidget.routeName,
                                            context.mounted,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                        text: 'Sign Up',
                                        options: FFButtonOptions(
                                          width: 300.0,
                                          height: 50.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                letterSpacing: 0.0,
                                              ),
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 8.0, 24.0, 8.0),
                                        child: Container(
                                          width: 300.0,
                                          child: TextFormField(
                                            controller:
                                                _model.emailTextController2,
                                            focusNode:
                                                _model.textFieldFocusNode4,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Email...',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.black,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.roboto(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                            maxLength: 40,
                                            buildCounter: (context,
                                                    {required currentLength,
                                                    required isFocused,
                                                    maxLength}) =>
                                                null,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            validator: _model
                                                .emailTextController2Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 8.0, 24.0, 8.0),
                                        child: Container(
                                          width: 300.0,
                                          child: TextFormField(
                                            controller:
                                                _model.passwordTextController2,
                                            focusNode:
                                                _model.textFieldFocusNode5,
                                            autofocus: false,
                                            obscureText:
                                                !_model.passwordVisibility3,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Password...',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              suffixIcon: InkWell(
                                                onTap: () => safeSetState(
                                                  () => _model
                                                          .passwordVisibility3 =
                                                      !_model
                                                          .passwordVisibility3,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _model.passwordVisibility3
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.roboto(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                            maxLength: 100,
                                            buildCounter: (context,
                                                    {required currentLength,
                                                    required isFocused,
                                                    maxLength}) =>
                                                null,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            validator: _model
                                                .passwordTextController2Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'LOGIN_PAGE_PAGE_login_ON_TAP');
                                            logFirebaseEvent('login_auth');
                                            GoRouter.of(context)
                                                .prepareAuthEvent();

                                            final user = await authManager
                                                .signInWithEmail(
                                              context,
                                              _model.emailTextController2.text,
                                              _model
                                                  .passwordTextController2.text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            logFirebaseEvent(
                                                'login_navigate_to');

                                            context.goNamedAuth(
                                              LoadingPageWidget.routeName,
                                              context.mounted,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );
                                          },
                                          text: 'Login',
                                          options: FFButtonOptions(
                                            width: 300.0,
                                            height: 50.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      font: FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 0.0,
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Text(
                    'Spaced Out',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          font: FlutterFlowTheme.of(context).bodyLarge,
                          fontSize: 28.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.97),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'LOGIN_PAGE_PAGE_TERMS_BTN_ON_TAP');
                              logFirebaseEvent('Button_bottom_sheet');
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: Container(
                                        height: 600.0,
                                        child: TermsOfServiceWidget(
                                          infoText:
                                              'Spaced Out - Terms of ServiceLast updated: 4/22/2025Hey there! Welcome to Spaced Out, the to-do list that\'s as fun as it is productive! By using the app, you’re agreeing to these Terms of Service. If that’s cool with you, let’s get started!1. What’s Spaced Out All About?Spaced Out is a free, gamified to-do list app designed to help you tackle your tasks while having a little fun. Whether you\'re a teen trying to get things done or a productivity nerd trying to stay on top of your game, we’ve got you covered.2. Who Can Use Spaced Out?We’re not picky when it comes to age—Spaced Out is for anyone who wants to be more productive and have fun doing it! However, if you\'re under 13, we suggest you use the app with some parental guidance.3. Your Account, Your RulesTo get started, you’ll need an email and a password. We only store your email and the tasks you create—your password is encrypted, so it’s safe with us! Just make sure you keep your login info secret. You’re in charge of your account, so if anything funky happens, it’s on you to keep it safe.4. Your Tasks = Your StuffWe love that you can create your own tasks and reminders—after all, they’re yours! Spaced Out doesn’t peek into your tasks or use them for anything sneaky. We just store them securely so you can keep track of everything.But hey, please don’t use Spaced Out to store anything shady or illegal. We want this to be a safe, positive space for all!5. Your Privacy is ImportantWe totally get that privacy matters. We only collect your email, your encrypted password, and your tasks—nothing else. And just so you know, we’ll never sell your data to anyone. Your info stays with you.For more deets, check out our Privacy Policy.6. Updates and ChangesWe might make some changes to Spaced Out every now and then, whether it’s adding new features or tweaking the ones you love. Don’t worry, we’ll try to give you a heads-up if it’s something big! Small updates? Those might sneak by without notice.7. Can You Leave? Of Course!If you ever want to delete your account, no hard feelings! You can do that at any time. We also reserve the right to pause or end accounts if they’re breaking the rules or causing trouble.8. We’re Not Responsible for EverythingSpaced Out is provided “as is.” We do our best to keep everything running smoothly, but we’re not responsible for any data loss or random glitches that may pop up. Use the app at your own risk!9. Questions? Let’s Chat!Got any questions or just want to chat? Reach out to us at task.nova.dev@gmail.com. We’re always here to help!',
                                        ),
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
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0x0039DEEF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodySmall,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
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
                                  'LOGIN_PRIVACY_POLICY_BTN_ON_TAP');
                              logFirebaseEvent('Button_bottom_sheet');
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: Container(
                                        height: 600.0,
                                        child: PrivacyPolicyWidget(
                                          infoText: '',
                                        ),
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
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0x0039DEEF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font:
                                        FlutterFlowTheme.of(context).bodySmall,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
