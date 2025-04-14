import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'loading_page_model.dart';
export 'loading_page_model.dart';

class LoadingPageWidget extends StatefulWidget {
  const LoadingPageWidget({super.key});

  static String routeName = 'loadingPage';
  static String routePath = '/loadingPage';

  @override
  State<LoadingPageWidget> createState() => _LoadingPageWidgetState();
}

class _LoadingPageWidgetState extends State<LoadingPageWidget> {
  late LoadingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'loadingPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('LOADING_loadingPage_ON_INIT_STATE');
      logFirebaseEvent('loadingPage_firestore_query');
      _model.shopStuff = await queryShopItemsRecordOnce(
        parent: currentUserReference,
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      if (_model.shopStuff!.smallSword) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().smallSwordBought = 0.5;
        FFAppState().smallSwordAvail = 1.0;
        FFAppState().smallSwordEquip = 0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().smallSwordBought = 1.0;
        FFAppState().smallSwordEquip = 0;
        FFAppState().smallSwordAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.bigSword) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().bigSwordBought = 0.5;
        FFAppState().bigSwordAvail = 1.0;
        FFAppState().bigSwordEquip = 0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().bigSwordBought = 1.0;
        FFAppState().bigSwordEquip = 0;
        FFAppState().bigSwordAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.spaceSword) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().spaceSwordBought = 0.5;
        FFAppState().spaceSwordEquip = 0;
        FFAppState().spaceSwordAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().spaceSwordBought = 1.0;
        FFAppState().spaceSwordEquip = 0;
        FFAppState().spaceSwordAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.zapyGun) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().zappyGunBought = 0.5;
        FFAppState().zappyGunAvail = 1.0;
        FFAppState().zappyGunEquip = 0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().zappyGunBought = 1.0;
        FFAppState().zappyGunEquip = 0;
        FFAppState().zappyGunAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.bigGun) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().sniperBought = 0.5;
        FFAppState().sniperGunEquip = 0;
        FFAppState().sniperAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().sniperBought = 1.0;
        FFAppState().sniperGunEquip = 0;
        FFAppState().sniperAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.cowboyHat) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().cowboyHatBought = 0.5;
        FFAppState().cowboyHatEquip = 0;
        FFAppState().cowboyHatAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().cowboyHatBought = 1.0;
        FFAppState().cowboyHatEquip = 0;
        FFAppState().cowboyHatAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.bowHat) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().bowHatBought = 0.5;
        FFAppState().bowHatEquip = 0;
        FFAppState().bowHatAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().bowHatBought = 1.0;
        FFAppState().bowHatEquip = 0;
        FFAppState().bowHatAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.pirateHat) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().pirateHatBought = 0.5;
        FFAppState().pirateHatEquip = 0;
        FFAppState().pirateHatAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().pirateHatBought = 1.0;
        FFAppState().pirateHatEquip = 0;
        FFAppState().pirateHatAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.topHat) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().topHatBought = 0.5;
        FFAppState().topHatEquip = 0;
        FFAppState().topHatAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().topHatBought = 1.0;
        FFAppState().topHatEquip = 0;
        FFAppState().topHatAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.mushroomHat) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().mushroomHatBought = 0.5;
        FFAppState().mushroomHatEquip = 0;
        FFAppState().mushroomHatAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().mushroomHatBought = 1.0;
        FFAppState().mushroomHatEquip = 0;
        FFAppState().mushroomHatAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.unicornHat) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().unicornHatBought = 0.5;
        FFAppState().unicornHatEquip = 0;
        FFAppState().unicornHatAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().unicornHatBought = 1.0;
        FFAppState().unicornHatEquip = 0;
        FFAppState().unicornHatAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.wizardHat) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().magicHatBought = 0.5;
        FFAppState().magicHatEquip = 0;
        FFAppState().magicHatAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().magicHatBought = 1.0;
        FFAppState().magicHatEquip = 0;
        FFAppState().magicHatAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.redPants) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().redPantsBought = 0.5;
        FFAppState().redPantsEquip = 0;
        FFAppState().redPantsAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().redPantsBought = 1.0;
        FFAppState().redPantsEquip = 0;
        FFAppState().redPantsAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.redShip) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().redShipBought = 0.5;
        FFAppState().redShipEquip = 0;
        FFAppState().redShipAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().redShipBought = 1.0;
        FFAppState().redShipEquip = 0;
        FFAppState().redShipAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.darkBluePants) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().bluePantsBought = 0.5;
        FFAppState().bluePantsEquip = 0;
        FFAppState().bluePantsAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().bluePantsEquip = 0;
        FFAppState().bluePantsAvail = 0.5;
        FFAppState().bluePantsBought = 1.0;
        safeSetState(() {});
      }

      if (_model.shopStuff!.darkBlueShip) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().blueShipEquip = 0;
        FFAppState().blueShipBought = 0.5;
        FFAppState().blueShipAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().blueShipBought = 1.0;
        FFAppState().blueShipAvail = 0.5;
        FFAppState().blueShipEquip = 0;
        safeSetState(() {});
      }

      if (_model.shopStuff!.greenPants) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().greenPantsBought = 0.5;
        FFAppState().greenPantsEquip = 0;
        FFAppState().greenPantsAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().greenPantsBought = 1.0;
        FFAppState().greenPantsEquip = 0;
        FFAppState().greenPantsAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.greenShip) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().greenShipEquip = 0;
        FFAppState().greenShipAvail = 1.0;
        FFAppState().greenShipBought = 0.5;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().greenShipEquip = 0;
        FFAppState().greenShipAvail = 0.5;
        FFAppState().greenShipBought = 1.0;
        safeSetState(() {});
      }

      if (_model.shopStuff!.yellowPants) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().yellowPantsBought = 0.5;
        FFAppState().yellowPantsEquip = 0;
        FFAppState().yellowPantsAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().yellowPantsBought = 1.0;
        FFAppState().yellowPantsEquip = 0;
        FFAppState().yellowPantsAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.yellowShip) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().yellowShipBought = 0.5;
        FFAppState().yellowShipEquip = 0;
        FFAppState().yellowShipAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().yellowShipBought = 1.0;
        FFAppState().yellowShipEquip = 0;
        FFAppState().yellowShipAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.purplePants) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().purplePantsBought = 0.5;
        FFAppState().purplePantsEquip = 0;
        FFAppState().purplePantsAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().purplePantsBought = 1.0;
        FFAppState().purplePantsEquip = 0;
        FFAppState().purplePantsAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.purpleShip) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().purpleShipBought = 0.5;
        FFAppState().purpleShipEquip = 0;
        FFAppState().purpleShipAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().purpleShipBought = 1.0;
        FFAppState().purpleShipEquip = 0;
        FFAppState().purpleShipAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.lightBluePants) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().cyanPantsBought = 0.5;
        FFAppState().cyanPantsEquip = 0;
        FFAppState().cyanPantsAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().cyanPantsBought = 1.0;
        FFAppState().cyanPantsEquip = 0;
        FFAppState().cyanPantsAvail = 0.5;
        safeSetState(() {});
      }

      if (_model.shopStuff!.lightBlueShip) {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().cyanShipBought = 0.5;
        FFAppState().cyanShipEquip = 0;
        FFAppState().cyanShipAvail = 1.0;
        safeSetState(() {});
      } else {
        logFirebaseEvent('loadingPage_update_app_state');
        FFAppState().cyanShipBought = 1.0;
        FFAppState().cyanShipEquip = 0;
        FFAppState().cyanShipAvail = 0.5;
        safeSetState(() {});
      }

      logFirebaseEvent('loadingPage_navigate_to');

      context.pushNamed(TasksWidget.routeName);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
          child: SafeArea(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: Image.asset(
                    'assets/images/check.gif',
                  ).image,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
