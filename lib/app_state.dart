import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
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

  EnemyStruct _enemy = EnemyStruct.fromSerializableMap(
      jsonDecode('{\"e_health\":\"1\",\"e_dmg\":\"1\"}'));
  EnemyStruct get enemy => _enemy;
  set enemy(EnemyStruct value) {
    _enemy = value;
  }

  void updateEnemyStruct(Function(EnemyStruct) updateFn) {
    updateFn(_enemy);
  }

  PlayerStruct _player = PlayerStruct.fromSerializableMap(
      jsonDecode('{\"p_health\":\"1\",\"p_damage\":\"1\"}'));
  PlayerStruct get player => _player;
  set player(PlayerStruct value) {
    _player = value;
  }

  void updatePlayerStruct(Function(PlayerStruct) updateFn) {
    updateFn(_player);
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
