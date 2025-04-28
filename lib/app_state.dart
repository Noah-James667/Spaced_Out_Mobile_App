import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_completedWalkthroughs') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_completedWalkthroughs') ?? '{}';
          _completedWalkthroughs = WalkthroughsStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_appEnemy') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_appEnemy') ?? '{}';
          _appEnemy =
              EnemyStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_appPlayer') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_appPlayer') ?? '{}';
          _appPlayer =
              PlayerStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _smallSwordBought =
          await secureStorage.getDouble('ff_smallSwordBought') ??
              _smallSwordBought;
    });
    await _safeInitAsync(() async {
      _bigSwordBought =
          await secureStorage.getDouble('ff_bigSwordBought') ?? _bigSwordBought;
    });
    await _safeInitAsync(() async {
      _spaceSwordBought =
          await secureStorage.getDouble('ff_spaceSwordBought') ??
              _spaceSwordBought;
    });
    await _safeInitAsync(() async {
      _zappyGunBought =
          await secureStorage.getDouble('ff_zappyGunBought') ?? _zappyGunBought;
    });
    await _safeInitAsync(() async {
      _sniperBought =
          await secureStorage.getDouble('ff_sniperBought') ?? _sniperBought;
    });
    await _safeInitAsync(() async {
      _cowboyHatBought = await secureStorage.getDouble('ff_cowboyHatBought') ??
          _cowboyHatBought;
    });
    await _safeInitAsync(() async {
      _bowHatBought =
          await secureStorage.getDouble('ff_bowHatBought') ?? _bowHatBought;
    });
    await _safeInitAsync(() async {
      _pirateHatBought = await secureStorage.getDouble('ff_pirateHatBought') ??
          _pirateHatBought;
    });
    await _safeInitAsync(() async {
      _topHatBought =
          await secureStorage.getDouble('ff_topHatBought') ?? _topHatBought;
    });
    await _safeInitAsync(() async {
      _mushroomHatBought =
          await secureStorage.getDouble('ff_mushroomHatBought') ??
              _mushroomHatBought;
    });
    await _safeInitAsync(() async {
      _unicornHatBought =
          await secureStorage.getDouble('ff_unicornHatBought') ??
              _unicornHatBought;
    });
    await _safeInitAsync(() async {
      _redPantsBought =
          await secureStorage.getDouble('ff_redPantsBought') ?? _redPantsBought;
    });
    await _safeInitAsync(() async {
      _greenPantsBought =
          await secureStorage.getDouble('ff_greenPantsBought') ??
              _greenPantsBought;
    });
    await _safeInitAsync(() async {
      _bluePantsBought = await secureStorage.getDouble('ff_bluePantsBought') ??
          _bluePantsBought;
    });
    await _safeInitAsync(() async {
      _yellowPantsBought =
          await secureStorage.getDouble('ff_yellowPantsBought') ??
              _yellowPantsBought;
    });
    await _safeInitAsync(() async {
      _purplePantsBought =
          await secureStorage.getDouble('ff_purplePantsBought') ??
              _purplePantsBought;
    });
    await _safeInitAsync(() async {
      _cyanPantsBought = await secureStorage.getDouble('ff_cyanPantsBought') ??
          _cyanPantsBought;
    });
    await _safeInitAsync(() async {
      _blueShipBought =
          await secureStorage.getDouble('ff_blueShipBought') ?? _blueShipBought;
    });
    await _safeInitAsync(() async {
      _redShipBought =
          await secureStorage.getDouble('ff_redShipBought') ?? _redShipBought;
    });
    await _safeInitAsync(() async {
      _greenShipBought = await secureStorage.getDouble('ff_greenShipBought') ??
          _greenShipBought;
    });
    await _safeInitAsync(() async {
      _yellowShipBought =
          await secureStorage.getDouble('ff_yellowShipBought') ??
              _yellowShipBought;
    });
    await _safeInitAsync(() async {
      _purpleShipBought =
          await secureStorage.getDouble('ff_purpleShipBought') ??
              _purpleShipBought;
    });
    await _safeInitAsync(() async {
      _cyanShipBought =
          await secureStorage.getDouble('ff_cyanShipBought') ?? _cyanShipBought;
    });
    await _safeInitAsync(() async {
      _magicHatBought =
          await secureStorage.getDouble('ff_magicHatBought') ?? _magicHatBought;
    });
    await _safeInitAsync(() async {
      _smallSwordEquip =
          await secureStorage.getInt('ff_smallSwordEquip') ?? _smallSwordEquip;
    });
    await _safeInitAsync(() async {
      _bigSwordEquip =
          await secureStorage.getInt('ff_bigSwordEquip') ?? _bigSwordEquip;
    });
    await _safeInitAsync(() async {
      _redShipEquip =
          await secureStorage.getInt('ff_redShipEquip') ?? _redShipEquip;
    });
    await _safeInitAsync(() async {
      _blueShipEquip =
          await secureStorage.getInt('ff_blueShipEquip') ?? _blueShipEquip;
    });
    await _safeInitAsync(() async {
      _greenShipEquip =
          await secureStorage.getInt('ff_greenShipEquip') ?? _greenShipEquip;
    });
    await _safeInitAsync(() async {
      _yellowShipEquip =
          await secureStorage.getInt('ff_yellowShipEquip') ?? _yellowShipEquip;
    });
    await _safeInitAsync(() async {
      _purpleShipEquip =
          await secureStorage.getInt('ff_purpleShipEquip') ?? _purpleShipEquip;
    });
    await _safeInitAsync(() async {
      _cyanShipEquip =
          await secureStorage.getInt('ff_cyanShipEquip') ?? _cyanShipEquip;
    });
    await _safeInitAsync(() async {
      _redPantsEquip =
          await secureStorage.getInt('ff_redPantsEquip') ?? _redPantsEquip;
    });
    await _safeInitAsync(() async {
      _bluePantsEquip =
          await secureStorage.getInt('ff_bluePantsEquip') ?? _bluePantsEquip;
    });
    await _safeInitAsync(() async {
      _greenPantsEquip =
          await secureStorage.getInt('ff_greenPantsEquip') ?? _greenPantsEquip;
    });
    await _safeInitAsync(() async {
      _yellowPantsEquip = await secureStorage.getInt('ff_yellowPantsEquip') ??
          _yellowPantsEquip;
    });
    await _safeInitAsync(() async {
      _purplePantsEquip = await secureStorage.getInt('ff_purplePantsEquip') ??
          _purplePantsEquip;
    });
    await _safeInitAsync(() async {
      _cowboyHatEquip =
          await secureStorage.getInt('ff_cowboyHatEquip') ?? _cowboyHatEquip;
    });
    await _safeInitAsync(() async {
      _cyanPantsEquip =
          await secureStorage.getInt('ff_cyanPantsEquip') ?? _cyanPantsEquip;
    });
    await _safeInitAsync(() async {
      _bowHatEquip =
          await secureStorage.getInt('ff_bowHatEquip') ?? _bowHatEquip;
    });
    await _safeInitAsync(() async {
      _pirateHatEquip =
          await secureStorage.getInt('ff_pirateHatEquip') ?? _pirateHatEquip;
    });
    await _safeInitAsync(() async {
      _topHatEquip =
          await secureStorage.getInt('ff_topHatEquip') ?? _topHatEquip;
    });
    await _safeInitAsync(() async {
      _mushroomHatEquip = await secureStorage.getInt('ff_mushroomHatEquip') ??
          _mushroomHatEquip;
    });
    await _safeInitAsync(() async {
      _unicornHatEquip =
          await secureStorage.getInt('ff_unicornHatEquip') ?? _unicornHatEquip;
    });
    await _safeInitAsync(() async {
      _magicHatEquip =
          await secureStorage.getInt('ff_magicHatEquip') ?? _magicHatEquip;
    });
    await _safeInitAsync(() async {
      _spaceSwordEquip =
          await secureStorage.getInt('ff_spaceSwordEquip') ?? _spaceSwordEquip;
    });
    await _safeInitAsync(() async {
      _zappyGunEquip =
          await secureStorage.getInt('ff_zappyGunEquip') ?? _zappyGunEquip;
    });
    await _safeInitAsync(() async {
      _sniperGunEquip =
          await secureStorage.getInt('ff_sniperGunEquip') ?? _sniperGunEquip;
    });
    await _safeInitAsync(() async {
      _smallSwordAvail = await secureStorage.getDouble('ff_smallSwordAvail') ??
          _smallSwordAvail;
    });
    await _safeInitAsync(() async {
      _bigSwordAvail =
          await secureStorage.getDouble('ff_bigSwordAvail') ?? _bigSwordAvail;
    });
    await _safeInitAsync(() async {
      _spaceSwordAvail = await secureStorage.getDouble('ff_spaceSwordAvail') ??
          _spaceSwordAvail;
    });
    await _safeInitAsync(() async {
      _zappyGunAvail =
          await secureStorage.getDouble('ff_zappyGunAvail') ?? _zappyGunAvail;
    });
    await _safeInitAsync(() async {
      _sniperAvail =
          await secureStorage.getDouble('ff_sniperAvail') ?? _sniperAvail;
    });
    await _safeInitAsync(() async {
      _cowboyHatAvail =
          await secureStorage.getDouble('ff_cowboyHatAvail') ?? _cowboyHatAvail;
    });
    await _safeInitAsync(() async {
      _bowHatAvail =
          await secureStorage.getDouble('ff_bowHatAvail') ?? _bowHatAvail;
    });
    await _safeInitAsync(() async {
      _pirateHatAvail =
          await secureStorage.getDouble('ff_pirateHatAvail') ?? _pirateHatAvail;
    });
    await _safeInitAsync(() async {
      _topHatAvail =
          await secureStorage.getDouble('ff_topHatAvail') ?? _topHatAvail;
    });
    await _safeInitAsync(() async {
      _mushroomHatAvail =
          await secureStorage.getDouble('ff_mushroomHatAvail') ??
              _mushroomHatAvail;
    });
    await _safeInitAsync(() async {
      _unicornHatAvail = await secureStorage.getDouble('ff_unicornHatAvail') ??
          _unicornHatAvail;
    });
    await _safeInitAsync(() async {
      _magicHatAvail =
          await secureStorage.getDouble('ff_magicHatAvail') ?? _magicHatAvail;
    });
    await _safeInitAsync(() async {
      _redPantsAvail =
          await secureStorage.getDouble('ff_redPantsAvail') ?? _redPantsAvail;
    });
    await _safeInitAsync(() async {
      _bluePantsAvail =
          await secureStorage.getDouble('ff_bluePantsAvail') ?? _bluePantsAvail;
    });
    await _safeInitAsync(() async {
      _greenPantsAvail = await secureStorage.getDouble('ff_greenPantsAvail') ??
          _greenPantsAvail;
    });
    await _safeInitAsync(() async {
      _yellowPantsAvail =
          await secureStorage.getDouble('ff_yellowPantsAvail') ??
              _yellowPantsAvail;
    });
    await _safeInitAsync(() async {
      _purplePantsAvail =
          await secureStorage.getDouble('ff_purplePantsAvail') ??
              _purplePantsAvail;
    });
    await _safeInitAsync(() async {
      _cyanPantsAvail =
          await secureStorage.getDouble('ff_cyanPantsAvail') ?? _cyanPantsAvail;
    });
    await _safeInitAsync(() async {
      _redShipAvail =
          await secureStorage.getDouble('ff_redShipAvail') ?? _redShipAvail;
    });
    await _safeInitAsync(() async {
      _blueShipAvail =
          await secureStorage.getDouble('ff_blueShipAvail') ?? _blueShipAvail;
    });
    await _safeInitAsync(() async {
      _greenShipAvail =
          await secureStorage.getDouble('ff_greenShipAvail') ?? _greenShipAvail;
    });
    await _safeInitAsync(() async {
      _yellowShipAvail = await secureStorage.getDouble('ff_yellowShipAvail') ??
          _yellowShipAvail;
    });
    await _safeInitAsync(() async {
      _purpleShipAvail = await secureStorage.getDouble('ff_purpleShipAvail') ??
          _purpleShipAvail;
    });
    await _safeInitAsync(() async {
      _cyanShipAvail =
          await secureStorage.getDouble('ff_cyanShipAvail') ?? _cyanShipAvail;
    });
    await _safeInitAsync(() async {
      _batVis = await secureStorage.getInt('ff_batVis') ?? _batVis;
    });
    await _safeInitAsync(() async {
      _wormVis = await secureStorage.getInt('ff_wormVis') ?? _wormVis;
    });
    await _safeInitAsync(() async {
      _eyeVis = await secureStorage.getInt('ff_eyeVis') ?? _eyeVis;
    });
    await _safeInitAsync(() async {
      _defaultTime = await secureStorage.read(key: 'ff_defaultTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_defaultTime'))!)
          : _defaultTime;
    });
    await _safeInitAsync(() async {
      _enemyType = await secureStorage.getInt('ff_enemyType') ?? _enemyType;
    });
    await _safeInitAsync(() async {
      _DmgBtnOpacity =
          await secureStorage.getDouble('ff_DmgBtnOpacity') ?? _DmgBtnOpacity;
    });
    await _safeInitAsync(() async {
      _ArmrBtnOpacity =
          await secureStorage.getDouble('ff_ArmrBtnOpacity') ?? _ArmrBtnOpacity;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  WalkthroughsStruct _completedWalkthroughs =
      WalkthroughsStruct.fromSerializableMap(jsonDecode('{}'));
  WalkthroughsStruct get completedWalkthroughs => _completedWalkthroughs;
  set completedWalkthroughs(WalkthroughsStruct value) {
    _completedWalkthroughs = value;
    secureStorage.setString('ff_completedWalkthroughs', value.serialize());
  }

  void deleteCompletedWalkthroughs() {
    secureStorage.delete(key: 'ff_completedWalkthroughs');
  }

  void updateCompletedWalkthroughsStruct(
      Function(WalkthroughsStruct) updateFn) {
    updateFn(_completedWalkthroughs);
    secureStorage.setString(
        'ff_completedWalkthroughs', _completedWalkthroughs.serialize());
  }

  List<DateTime> _highlightedDates = [];
  List<DateTime> get highlightedDates => _highlightedDates;
  set highlightedDates(List<DateTime> value) {
    _highlightedDates = value;
  }

  void addToHighlightedDates(DateTime value) {
    highlightedDates.add(value);
  }

  void removeFromHighlightedDates(DateTime value) {
    highlightedDates.remove(value);
  }

  void removeAtIndexFromHighlightedDates(int index) {
    highlightedDates.removeAt(index);
  }

  void updateHighlightedDatesAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    highlightedDates[index] = updateFn(_highlightedDates[index]);
  }

  void insertAtIndexInHighlightedDates(int index, DateTime value) {
    highlightedDates.insert(index, value);
  }

  EnemyStruct _appEnemy = EnemyStruct.fromSerializableMap(jsonDecode(
      '{\"e_health\":\"1.0\",\"e_dmg\":\"1.0\",\"e_armr\":\"1.0\",\"e_maxHealth\":\"1.0\"}'));
  EnemyStruct get appEnemy => _appEnemy;
  set appEnemy(EnemyStruct value) {
    _appEnemy = value;
    secureStorage.setString('ff_appEnemy', value.serialize());
  }

  void deleteAppEnemy() {
    secureStorage.delete(key: 'ff_appEnemy');
  }

  void updateAppEnemyStruct(Function(EnemyStruct) updateFn) {
    updateFn(_appEnemy);
    secureStorage.setString('ff_appEnemy', _appEnemy.serialize());
  }

  PlayerStruct _appPlayer = PlayerStruct.fromSerializableMap(jsonDecode(
      '{\"p_health\":\"1.0\",\"p_dmg\":\"1.0\",\"p_armr\":\"1.0\",\"p_maxHealth\":\"1.0\"}'));
  PlayerStruct get appPlayer => _appPlayer;
  set appPlayer(PlayerStruct value) {
    _appPlayer = value;
    secureStorage.setString('ff_appPlayer', value.serialize());
  }

  void deleteAppPlayer() {
    secureStorage.delete(key: 'ff_appPlayer');
  }

  void updateAppPlayerStruct(Function(PlayerStruct) updateFn) {
    updateFn(_appPlayer);
    secureStorage.setString('ff_appPlayer', _appPlayer.serialize());
  }

  UpgradeStruct _appUpgrade = UpgradeStruct();
  UpgradeStruct get appUpgrade => _appUpgrade;
  set appUpgrade(UpgradeStruct value) {
    _appUpgrade = value;
  }

  void updateAppUpgradeStruct(Function(UpgradeStruct) updateFn) {
    updateFn(_appUpgrade);
  }

  /// Allows the astronaught to spin when incrimented
  int _taskSpin = 0;
  int get taskSpin => _taskSpin;
  set taskSpin(int value) {
    _taskSpin = value;
  }

  double _smallSwordBought = 1.0;
  double get smallSwordBought => _smallSwordBought;
  set smallSwordBought(double value) {
    _smallSwordBought = value;
    secureStorage.setDouble('ff_smallSwordBought', value);
  }

  void deleteSmallSwordBought() {
    secureStorage.delete(key: 'ff_smallSwordBought');
  }

  double _bigSwordBought = 1.0;
  double get bigSwordBought => _bigSwordBought;
  set bigSwordBought(double value) {
    _bigSwordBought = value;
    secureStorage.setDouble('ff_bigSwordBought', value);
  }

  void deleteBigSwordBought() {
    secureStorage.delete(key: 'ff_bigSwordBought');
  }

  double _spaceSwordBought = 1.0;
  double get spaceSwordBought => _spaceSwordBought;
  set spaceSwordBought(double value) {
    _spaceSwordBought = value;
    secureStorage.setDouble('ff_spaceSwordBought', value);
  }

  void deleteSpaceSwordBought() {
    secureStorage.delete(key: 'ff_spaceSwordBought');
  }

  double _zappyGunBought = 1.0;
  double get zappyGunBought => _zappyGunBought;
  set zappyGunBought(double value) {
    _zappyGunBought = value;
    secureStorage.setDouble('ff_zappyGunBought', value);
  }

  void deleteZappyGunBought() {
    secureStorage.delete(key: 'ff_zappyGunBought');
  }

  double _sniperBought = 1.0;
  double get sniperBought => _sniperBought;
  set sniperBought(double value) {
    _sniperBought = value;
    secureStorage.setDouble('ff_sniperBought', value);
  }

  void deleteSniperBought() {
    secureStorage.delete(key: 'ff_sniperBought');
  }

  double _cowboyHatBought = 1.0;
  double get cowboyHatBought => _cowboyHatBought;
  set cowboyHatBought(double value) {
    _cowboyHatBought = value;
    secureStorage.setDouble('ff_cowboyHatBought', value);
  }

  void deleteCowboyHatBought() {
    secureStorage.delete(key: 'ff_cowboyHatBought');
  }

  double _bowHatBought = 1.0;
  double get bowHatBought => _bowHatBought;
  set bowHatBought(double value) {
    _bowHatBought = value;
    secureStorage.setDouble('ff_bowHatBought', value);
  }

  void deleteBowHatBought() {
    secureStorage.delete(key: 'ff_bowHatBought');
  }

  double _pirateHatBought = 1.0;
  double get pirateHatBought => _pirateHatBought;
  set pirateHatBought(double value) {
    _pirateHatBought = value;
    secureStorage.setDouble('ff_pirateHatBought', value);
  }

  void deletePirateHatBought() {
    secureStorage.delete(key: 'ff_pirateHatBought');
  }

  double _topHatBought = 1.0;
  double get topHatBought => _topHatBought;
  set topHatBought(double value) {
    _topHatBought = value;
    secureStorage.setDouble('ff_topHatBought', value);
  }

  void deleteTopHatBought() {
    secureStorage.delete(key: 'ff_topHatBought');
  }

  double _mushroomHatBought = 1.0;
  double get mushroomHatBought => _mushroomHatBought;
  set mushroomHatBought(double value) {
    _mushroomHatBought = value;
    secureStorage.setDouble('ff_mushroomHatBought', value);
  }

  void deleteMushroomHatBought() {
    secureStorage.delete(key: 'ff_mushroomHatBought');
  }

  double _unicornHatBought = 1.0;
  double get unicornHatBought => _unicornHatBought;
  set unicornHatBought(double value) {
    _unicornHatBought = value;
    secureStorage.setDouble('ff_unicornHatBought', value);
  }

  void deleteUnicornHatBought() {
    secureStorage.delete(key: 'ff_unicornHatBought');
  }

  double _redPantsBought = 1.0;
  double get redPantsBought => _redPantsBought;
  set redPantsBought(double value) {
    _redPantsBought = value;
    secureStorage.setDouble('ff_redPantsBought', value);
  }

  void deleteRedPantsBought() {
    secureStorage.delete(key: 'ff_redPantsBought');
  }

  double _greenPantsBought = 1.0;
  double get greenPantsBought => _greenPantsBought;
  set greenPantsBought(double value) {
    _greenPantsBought = value;
    secureStorage.setDouble('ff_greenPantsBought', value);
  }

  void deleteGreenPantsBought() {
    secureStorage.delete(key: 'ff_greenPantsBought');
  }

  double _bluePantsBought = 1.0;
  double get bluePantsBought => _bluePantsBought;
  set bluePantsBought(double value) {
    _bluePantsBought = value;
    secureStorage.setDouble('ff_bluePantsBought', value);
  }

  void deleteBluePantsBought() {
    secureStorage.delete(key: 'ff_bluePantsBought');
  }

  double _yellowPantsBought = 1.0;
  double get yellowPantsBought => _yellowPantsBought;
  set yellowPantsBought(double value) {
    _yellowPantsBought = value;
    secureStorage.setDouble('ff_yellowPantsBought', value);
  }

  void deleteYellowPantsBought() {
    secureStorage.delete(key: 'ff_yellowPantsBought');
  }

  double _purplePantsBought = 1.0;
  double get purplePantsBought => _purplePantsBought;
  set purplePantsBought(double value) {
    _purplePantsBought = value;
    secureStorage.setDouble('ff_purplePantsBought', value);
  }

  void deletePurplePantsBought() {
    secureStorage.delete(key: 'ff_purplePantsBought');
  }

  double _cyanPantsBought = 1.0;
  double get cyanPantsBought => _cyanPantsBought;
  set cyanPantsBought(double value) {
    _cyanPantsBought = value;
    secureStorage.setDouble('ff_cyanPantsBought', value);
  }

  void deleteCyanPantsBought() {
    secureStorage.delete(key: 'ff_cyanPantsBought');
  }

  double _blueShipBought = 1.0;
  double get blueShipBought => _blueShipBought;
  set blueShipBought(double value) {
    _blueShipBought = value;
    secureStorage.setDouble('ff_blueShipBought', value);
  }

  void deleteBlueShipBought() {
    secureStorage.delete(key: 'ff_blueShipBought');
  }

  double _redShipBought = 1.0;
  double get redShipBought => _redShipBought;
  set redShipBought(double value) {
    _redShipBought = value;
    secureStorage.setDouble('ff_redShipBought', value);
  }

  void deleteRedShipBought() {
    secureStorage.delete(key: 'ff_redShipBought');
  }

  double _greenShipBought = 1.0;
  double get greenShipBought => _greenShipBought;
  set greenShipBought(double value) {
    _greenShipBought = value;
    secureStorage.setDouble('ff_greenShipBought', value);
  }

  void deleteGreenShipBought() {
    secureStorage.delete(key: 'ff_greenShipBought');
  }

  double _yellowShipBought = 1.0;
  double get yellowShipBought => _yellowShipBought;
  set yellowShipBought(double value) {
    _yellowShipBought = value;
    secureStorage.setDouble('ff_yellowShipBought', value);
  }

  void deleteYellowShipBought() {
    secureStorage.delete(key: 'ff_yellowShipBought');
  }

  double _purpleShipBought = 1.0;
  double get purpleShipBought => _purpleShipBought;
  set purpleShipBought(double value) {
    _purpleShipBought = value;
    secureStorage.setDouble('ff_purpleShipBought', value);
  }

  void deletePurpleShipBought() {
    secureStorage.delete(key: 'ff_purpleShipBought');
  }

  double _cyanShipBought = 1.0;
  double get cyanShipBought => _cyanShipBought;
  set cyanShipBought(double value) {
    _cyanShipBought = value;
    secureStorage.setDouble('ff_cyanShipBought', value);
  }

  void deleteCyanShipBought() {
    secureStorage.delete(key: 'ff_cyanShipBought');
  }

  double _magicHatBought = 1.0;
  double get magicHatBought => _magicHatBought;
  set magicHatBought(double value) {
    _magicHatBought = value;
    secureStorage.setDouble('ff_magicHatBought', value);
  }

  void deleteMagicHatBought() {
    secureStorage.delete(key: 'ff_magicHatBought');
  }

  int _smallSwordEquip = 0;
  int get smallSwordEquip => _smallSwordEquip;
  set smallSwordEquip(int value) {
    _smallSwordEquip = value;
    secureStorage.setInt('ff_smallSwordEquip', value);
  }

  void deleteSmallSwordEquip() {
    secureStorage.delete(key: 'ff_smallSwordEquip');
  }

  int _bigSwordEquip = 0;
  int get bigSwordEquip => _bigSwordEquip;
  set bigSwordEquip(int value) {
    _bigSwordEquip = value;
    secureStorage.setInt('ff_bigSwordEquip', value);
  }

  void deleteBigSwordEquip() {
    secureStorage.delete(key: 'ff_bigSwordEquip');
  }

  int _redShipEquip = 0;
  int get redShipEquip => _redShipEquip;
  set redShipEquip(int value) {
    _redShipEquip = value;
    secureStorage.setInt('ff_redShipEquip', value);
  }

  void deleteRedShipEquip() {
    secureStorage.delete(key: 'ff_redShipEquip');
  }

  int _blueShipEquip = 0;
  int get blueShipEquip => _blueShipEquip;
  set blueShipEquip(int value) {
    _blueShipEquip = value;
    secureStorage.setInt('ff_blueShipEquip', value);
  }

  void deleteBlueShipEquip() {
    secureStorage.delete(key: 'ff_blueShipEquip');
  }

  int _greenShipEquip = 0;
  int get greenShipEquip => _greenShipEquip;
  set greenShipEquip(int value) {
    _greenShipEquip = value;
    secureStorage.setInt('ff_greenShipEquip', value);
  }

  void deleteGreenShipEquip() {
    secureStorage.delete(key: 'ff_greenShipEquip');
  }

  int _yellowShipEquip = 0;
  int get yellowShipEquip => _yellowShipEquip;
  set yellowShipEquip(int value) {
    _yellowShipEquip = value;
    secureStorage.setInt('ff_yellowShipEquip', value);
  }

  void deleteYellowShipEquip() {
    secureStorage.delete(key: 'ff_yellowShipEquip');
  }

  int _purpleShipEquip = 0;
  int get purpleShipEquip => _purpleShipEquip;
  set purpleShipEquip(int value) {
    _purpleShipEquip = value;
    secureStorage.setInt('ff_purpleShipEquip', value);
  }

  void deletePurpleShipEquip() {
    secureStorage.delete(key: 'ff_purpleShipEquip');
  }

  int _cyanShipEquip = 0;
  int get cyanShipEquip => _cyanShipEquip;
  set cyanShipEquip(int value) {
    _cyanShipEquip = value;
    secureStorage.setInt('ff_cyanShipEquip', value);
  }

  void deleteCyanShipEquip() {
    secureStorage.delete(key: 'ff_cyanShipEquip');
  }

  int _redPantsEquip = 0;
  int get redPantsEquip => _redPantsEquip;
  set redPantsEquip(int value) {
    _redPantsEquip = value;
    secureStorage.setInt('ff_redPantsEquip', value);
  }

  void deleteRedPantsEquip() {
    secureStorage.delete(key: 'ff_redPantsEquip');
  }

  int _bluePantsEquip = 0;
  int get bluePantsEquip => _bluePantsEquip;
  set bluePantsEquip(int value) {
    _bluePantsEquip = value;
    secureStorage.setInt('ff_bluePantsEquip', value);
  }

  void deleteBluePantsEquip() {
    secureStorage.delete(key: 'ff_bluePantsEquip');
  }

  int _greenPantsEquip = 0;
  int get greenPantsEquip => _greenPantsEquip;
  set greenPantsEquip(int value) {
    _greenPantsEquip = value;
    secureStorage.setInt('ff_greenPantsEquip', value);
  }

  void deleteGreenPantsEquip() {
    secureStorage.delete(key: 'ff_greenPantsEquip');
  }

  int _yellowPantsEquip = 0;
  int get yellowPantsEquip => _yellowPantsEquip;
  set yellowPantsEquip(int value) {
    _yellowPantsEquip = value;
    secureStorage.setInt('ff_yellowPantsEquip', value);
  }

  void deleteYellowPantsEquip() {
    secureStorage.delete(key: 'ff_yellowPantsEquip');
  }

  int _purplePantsEquip = 0;
  int get purplePantsEquip => _purplePantsEquip;
  set purplePantsEquip(int value) {
    _purplePantsEquip = value;
    secureStorage.setInt('ff_purplePantsEquip', value);
  }

  void deletePurplePantsEquip() {
    secureStorage.delete(key: 'ff_purplePantsEquip');
  }

  int _cowboyHatEquip = 0;
  int get cowboyHatEquip => _cowboyHatEquip;
  set cowboyHatEquip(int value) {
    _cowboyHatEquip = value;
    secureStorage.setInt('ff_cowboyHatEquip', value);
  }

  void deleteCowboyHatEquip() {
    secureStorage.delete(key: 'ff_cowboyHatEquip');
  }

  int _cyanPantsEquip = 0;
  int get cyanPantsEquip => _cyanPantsEquip;
  set cyanPantsEquip(int value) {
    _cyanPantsEquip = value;
    secureStorage.setInt('ff_cyanPantsEquip', value);
  }

  void deleteCyanPantsEquip() {
    secureStorage.delete(key: 'ff_cyanPantsEquip');
  }

  int _bowHatEquip = 0;
  int get bowHatEquip => _bowHatEquip;
  set bowHatEquip(int value) {
    _bowHatEquip = value;
    secureStorage.setInt('ff_bowHatEquip', value);
  }

  void deleteBowHatEquip() {
    secureStorage.delete(key: 'ff_bowHatEquip');
  }

  int _pirateHatEquip = 0;
  int get pirateHatEquip => _pirateHatEquip;
  set pirateHatEquip(int value) {
    _pirateHatEquip = value;
    secureStorage.setInt('ff_pirateHatEquip', value);
  }

  void deletePirateHatEquip() {
    secureStorage.delete(key: 'ff_pirateHatEquip');
  }

  int _topHatEquip = 0;
  int get topHatEquip => _topHatEquip;
  set topHatEquip(int value) {
    _topHatEquip = value;
    secureStorage.setInt('ff_topHatEquip', value);
  }

  void deleteTopHatEquip() {
    secureStorage.delete(key: 'ff_topHatEquip');
  }

  int _mushroomHatEquip = 0;
  int get mushroomHatEquip => _mushroomHatEquip;
  set mushroomHatEquip(int value) {
    _mushroomHatEquip = value;
    secureStorage.setInt('ff_mushroomHatEquip', value);
  }

  void deleteMushroomHatEquip() {
    secureStorage.delete(key: 'ff_mushroomHatEquip');
  }

  int _unicornHatEquip = 0;
  int get unicornHatEquip => _unicornHatEquip;
  set unicornHatEquip(int value) {
    _unicornHatEquip = value;
    secureStorage.setInt('ff_unicornHatEquip', value);
  }

  void deleteUnicornHatEquip() {
    secureStorage.delete(key: 'ff_unicornHatEquip');
  }

  int _magicHatEquip = 0;
  int get magicHatEquip => _magicHatEquip;
  set magicHatEquip(int value) {
    _magicHatEquip = value;
    secureStorage.setInt('ff_magicHatEquip', value);
  }

  void deleteMagicHatEquip() {
    secureStorage.delete(key: 'ff_magicHatEquip');
  }

  int _spaceSwordEquip = 0;
  int get spaceSwordEquip => _spaceSwordEquip;
  set spaceSwordEquip(int value) {
    _spaceSwordEquip = value;
    secureStorage.setInt('ff_spaceSwordEquip', value);
  }

  void deleteSpaceSwordEquip() {
    secureStorage.delete(key: 'ff_spaceSwordEquip');
  }

  int _zappyGunEquip = 0;
  int get zappyGunEquip => _zappyGunEquip;
  set zappyGunEquip(int value) {
    _zappyGunEquip = value;
    secureStorage.setInt('ff_zappyGunEquip', value);
  }

  void deleteZappyGunEquip() {
    secureStorage.delete(key: 'ff_zappyGunEquip');
  }

  int _sniperGunEquip = 0;
  int get sniperGunEquip => _sniperGunEquip;
  set sniperGunEquip(int value) {
    _sniperGunEquip = value;
    secureStorage.setInt('ff_sniperGunEquip', value);
  }

  void deleteSniperGunEquip() {
    secureStorage.delete(key: 'ff_sniperGunEquip');
  }

  double _smallSwordAvail = 0.5;
  double get smallSwordAvail => _smallSwordAvail;
  set smallSwordAvail(double value) {
    _smallSwordAvail = value;
    secureStorage.setDouble('ff_smallSwordAvail', value);
  }

  void deleteSmallSwordAvail() {
    secureStorage.delete(key: 'ff_smallSwordAvail');
  }

  double _bigSwordAvail = 0.5;
  double get bigSwordAvail => _bigSwordAvail;
  set bigSwordAvail(double value) {
    _bigSwordAvail = value;
    secureStorage.setDouble('ff_bigSwordAvail', value);
  }

  void deleteBigSwordAvail() {
    secureStorage.delete(key: 'ff_bigSwordAvail');
  }

  double _spaceSwordAvail = 0.5;
  double get spaceSwordAvail => _spaceSwordAvail;
  set spaceSwordAvail(double value) {
    _spaceSwordAvail = value;
    secureStorage.setDouble('ff_spaceSwordAvail', value);
  }

  void deleteSpaceSwordAvail() {
    secureStorage.delete(key: 'ff_spaceSwordAvail');
  }

  double _zappyGunAvail = 0.5;
  double get zappyGunAvail => _zappyGunAvail;
  set zappyGunAvail(double value) {
    _zappyGunAvail = value;
    secureStorage.setDouble('ff_zappyGunAvail', value);
  }

  void deleteZappyGunAvail() {
    secureStorage.delete(key: 'ff_zappyGunAvail');
  }

  double _sniperAvail = 0.5;
  double get sniperAvail => _sniperAvail;
  set sniperAvail(double value) {
    _sniperAvail = value;
    secureStorage.setDouble('ff_sniperAvail', value);
  }

  void deleteSniperAvail() {
    secureStorage.delete(key: 'ff_sniperAvail');
  }

  double _cowboyHatAvail = 0.5;
  double get cowboyHatAvail => _cowboyHatAvail;
  set cowboyHatAvail(double value) {
    _cowboyHatAvail = value;
    secureStorage.setDouble('ff_cowboyHatAvail', value);
  }

  void deleteCowboyHatAvail() {
    secureStorage.delete(key: 'ff_cowboyHatAvail');
  }

  double _bowHatAvail = 0.5;
  double get bowHatAvail => _bowHatAvail;
  set bowHatAvail(double value) {
    _bowHatAvail = value;
    secureStorage.setDouble('ff_bowHatAvail', value);
  }

  void deleteBowHatAvail() {
    secureStorage.delete(key: 'ff_bowHatAvail');
  }

  double _pirateHatAvail = 0.5;
  double get pirateHatAvail => _pirateHatAvail;
  set pirateHatAvail(double value) {
    _pirateHatAvail = value;
    secureStorage.setDouble('ff_pirateHatAvail', value);
  }

  void deletePirateHatAvail() {
    secureStorage.delete(key: 'ff_pirateHatAvail');
  }

  double _topHatAvail = 0.5;
  double get topHatAvail => _topHatAvail;
  set topHatAvail(double value) {
    _topHatAvail = value;
    secureStorage.setDouble('ff_topHatAvail', value);
  }

  void deleteTopHatAvail() {
    secureStorage.delete(key: 'ff_topHatAvail');
  }

  double _mushroomHatAvail = 0.5;
  double get mushroomHatAvail => _mushroomHatAvail;
  set mushroomHatAvail(double value) {
    _mushroomHatAvail = value;
    secureStorage.setDouble('ff_mushroomHatAvail', value);
  }

  void deleteMushroomHatAvail() {
    secureStorage.delete(key: 'ff_mushroomHatAvail');
  }

  double _unicornHatAvail = 0.5;
  double get unicornHatAvail => _unicornHatAvail;
  set unicornHatAvail(double value) {
    _unicornHatAvail = value;
    secureStorage.setDouble('ff_unicornHatAvail', value);
  }

  void deleteUnicornHatAvail() {
    secureStorage.delete(key: 'ff_unicornHatAvail');
  }

  double _magicHatAvail = 0.5;
  double get magicHatAvail => _magicHatAvail;
  set magicHatAvail(double value) {
    _magicHatAvail = value;
    secureStorage.setDouble('ff_magicHatAvail', value);
  }

  void deleteMagicHatAvail() {
    secureStorage.delete(key: 'ff_magicHatAvail');
  }

  double _redPantsAvail = 0.5;
  double get redPantsAvail => _redPantsAvail;
  set redPantsAvail(double value) {
    _redPantsAvail = value;
    secureStorage.setDouble('ff_redPantsAvail', value);
  }

  void deleteRedPantsAvail() {
    secureStorage.delete(key: 'ff_redPantsAvail');
  }

  double _bluePantsAvail = 0.5;
  double get bluePantsAvail => _bluePantsAvail;
  set bluePantsAvail(double value) {
    _bluePantsAvail = value;
    secureStorage.setDouble('ff_bluePantsAvail', value);
  }

  void deleteBluePantsAvail() {
    secureStorage.delete(key: 'ff_bluePantsAvail');
  }

  double _greenPantsAvail = 0.5;
  double get greenPantsAvail => _greenPantsAvail;
  set greenPantsAvail(double value) {
    _greenPantsAvail = value;
    secureStorage.setDouble('ff_greenPantsAvail', value);
  }

  void deleteGreenPantsAvail() {
    secureStorage.delete(key: 'ff_greenPantsAvail');
  }

  double _yellowPantsAvail = 0.5;
  double get yellowPantsAvail => _yellowPantsAvail;
  set yellowPantsAvail(double value) {
    _yellowPantsAvail = value;
    secureStorage.setDouble('ff_yellowPantsAvail', value);
  }

  void deleteYellowPantsAvail() {
    secureStorage.delete(key: 'ff_yellowPantsAvail');
  }

  double _purplePantsAvail = 0.5;
  double get purplePantsAvail => _purplePantsAvail;
  set purplePantsAvail(double value) {
    _purplePantsAvail = value;
    secureStorage.setDouble('ff_purplePantsAvail', value);
  }

  void deletePurplePantsAvail() {
    secureStorage.delete(key: 'ff_purplePantsAvail');
  }

  double _cyanPantsAvail = 0.5;
  double get cyanPantsAvail => _cyanPantsAvail;
  set cyanPantsAvail(double value) {
    _cyanPantsAvail = value;
    secureStorage.setDouble('ff_cyanPantsAvail', value);
  }

  void deleteCyanPantsAvail() {
    secureStorage.delete(key: 'ff_cyanPantsAvail');
  }

  double _redShipAvail = 0.5;
  double get redShipAvail => _redShipAvail;
  set redShipAvail(double value) {
    _redShipAvail = value;
    secureStorage.setDouble('ff_redShipAvail', value);
  }

  void deleteRedShipAvail() {
    secureStorage.delete(key: 'ff_redShipAvail');
  }

  double _blueShipAvail = 0.5;
  double get blueShipAvail => _blueShipAvail;
  set blueShipAvail(double value) {
    _blueShipAvail = value;
    secureStorage.setDouble('ff_blueShipAvail', value);
  }

  void deleteBlueShipAvail() {
    secureStorage.delete(key: 'ff_blueShipAvail');
  }

  double _greenShipAvail = 0.5;
  double get greenShipAvail => _greenShipAvail;
  set greenShipAvail(double value) {
    _greenShipAvail = value;
    secureStorage.setDouble('ff_greenShipAvail', value);
  }

  void deleteGreenShipAvail() {
    secureStorage.delete(key: 'ff_greenShipAvail');
  }

  double _yellowShipAvail = 0.5;
  double get yellowShipAvail => _yellowShipAvail;
  set yellowShipAvail(double value) {
    _yellowShipAvail = value;
    secureStorage.setDouble('ff_yellowShipAvail', value);
  }

  void deleteYellowShipAvail() {
    secureStorage.delete(key: 'ff_yellowShipAvail');
  }

  double _purpleShipAvail = 0.5;
  double get purpleShipAvail => _purpleShipAvail;
  set purpleShipAvail(double value) {
    _purpleShipAvail = value;
    secureStorage.setDouble('ff_purpleShipAvail', value);
  }

  void deletePurpleShipAvail() {
    secureStorage.delete(key: 'ff_purpleShipAvail');
  }

  double _cyanShipAvail = 0.5;
  double get cyanShipAvail => _cyanShipAvail;
  set cyanShipAvail(double value) {
    _cyanShipAvail = value;
    secureStorage.setDouble('ff_cyanShipAvail', value);
  }

  void deleteCyanShipAvail() {
    secureStorage.delete(key: 'ff_cyanShipAvail');
  }

  int _batVis = 0;
  int get batVis => _batVis;
  set batVis(int value) {
    _batVis = value;
    secureStorage.setInt('ff_batVis', value);
  }

  void deleteBatVis() {
    secureStorage.delete(key: 'ff_batVis');
  }

  int _wormVis = 1;
  int get wormVis => _wormVis;
  set wormVis(int value) {
    _wormVis = value;
    secureStorage.setInt('ff_wormVis', value);
  }

  void deleteWormVis() {
    secureStorage.delete(key: 'ff_wormVis');
  }

  int _eyeVis = 0;
  int get eyeVis => _eyeVis;
  set eyeVis(int value) {
    _eyeVis = value;
    secureStorage.setInt('ff_eyeVis', value);
  }

  void deleteEyeVis() {
    secureStorage.delete(key: 'ff_eyeVis');
  }

  DateTime? _defaultTime = DateTime.fromMillisecondsSinceEpoch(1745643540000);
  DateTime? get defaultTime => _defaultTime;
  set defaultTime(DateTime? value) {
    _defaultTime = value;
    value != null
        ? secureStorage.setInt('ff_defaultTime', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_defaultTime');
  }

  void deleteDefaultTime() {
    secureStorage.delete(key: 'ff_defaultTime');
  }

  bool _gameNotRunning = true;
  bool get gameNotRunning => _gameNotRunning;
  set gameNotRunning(bool value) {
    _gameNotRunning = value;
  }

  int _enemyType = 1;
  int get enemyType => _enemyType;
  set enemyType(int value) {
    _enemyType = value;
    secureStorage.setInt('ff_enemyType', value);
  }

  void deleteEnemyType() {
    secureStorage.delete(key: 'ff_enemyType');
  }

  double _DmgBtnOpacity = 0.5;
  double get DmgBtnOpacity => _DmgBtnOpacity;
  set DmgBtnOpacity(double value) {
    _DmgBtnOpacity = value;
    secureStorage.setDouble('ff_DmgBtnOpacity', value);
  }

  void deleteDmgBtnOpacity() {
    secureStorage.delete(key: 'ff_DmgBtnOpacity');
  }

  double _ArmrBtnOpacity = 0.5;
  double get ArmrBtnOpacity => _ArmrBtnOpacity;
  set ArmrBtnOpacity(double value) {
    _ArmrBtnOpacity = value;
    secureStorage.setDouble('ff_ArmrBtnOpacity', value);
  }

  void deleteArmrBtnOpacity() {
    secureStorage.delete(key: 'ff_ArmrBtnOpacity');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
