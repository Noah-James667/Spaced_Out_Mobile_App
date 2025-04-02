import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
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
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

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

  /// Value to determine which hat is made visible in game page, equip page (on
  /// the astronaught) and in the shop (on the astronaught) - each hat should be
  /// tied to a different value
  int _equippedHat = 0;
  int get equippedHat => _equippedHat;
  set equippedHat(int value) {
    _equippedHat = value;
  }

  /// Value to determine which boot is made visible in game page, equip page (on
  /// the astronaught) and in the shop (on the astronaught) - each boot should
  /// be tied to a different value
  int _equippedBoot = 0;
  int get equippedBoot => _equippedBoot;
  set equippedBoot(int value) {
    _equippedBoot = value;
  }

  /// Value to determine which weapon is made visible in game page, equip page
  /// (on the astronaught) and in the shop (on the astronaught) - each weapon
  /// should be tied to a different value
  int _equippedWeapon = 0;
  int get equippedWeapon => _equippedWeapon;
  set equippedWeapon(int value) {
    _equippedWeapon = value;
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

  /// Allows the astronaught to spin when incrimented
  int _taskSpin = 0;
  int get taskSpin => _taskSpin;
  set taskSpin(int value) {
    _taskSpin = value;
  }

  int _smallSwordBought = 0;
  int get smallSwordBought => _smallSwordBought;
  set smallSwordBought(int value) {
    _smallSwordBought = value;
  }

  final _queryCacheManager = StreamRequestManager<List<TaskRecord>>();
  Stream<List<TaskRecord>> queryCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<TaskRecord>> Function() requestFn,
  }) =>
      _queryCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryCacheCache() => _queryCacheManager.clear();
  void clearQueryCacheCacheKey(String? uniqueKey) =>
      _queryCacheManager.clearRequest(uniqueKey);
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
