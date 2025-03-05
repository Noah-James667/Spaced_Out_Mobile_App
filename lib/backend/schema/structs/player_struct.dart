// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PlayerStruct extends FFFirebaseStruct {
  PlayerStruct({
    int? pHealth,
    int? pDamage,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pHealth = pHealth,
        _pDamage = pDamage,
        super(firestoreUtilData);

  // "p_health" field.
  int? _pHealth;
  int get pHealth => _pHealth ?? 20;
  set pHealth(int? val) => _pHealth = val;

  void incrementPHealth(int amount) => pHealth = pHealth + amount;

  bool hasPHealth() => _pHealth != null;

  // "p_damage" field.
  int? _pDamage;
  int get pDamage => _pDamage ?? 1;
  set pDamage(int? val) => _pDamage = val;

  void incrementPDamage(int amount) => pDamage = pDamage + amount;

  bool hasPDamage() => _pDamage != null;

  static PlayerStruct fromMap(Map<String, dynamic> data) => PlayerStruct(
        pHealth: castToType<int>(data['p_health']),
        pDamage: castToType<int>(data['p_damage']),
      );

  static PlayerStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlayerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'p_health': _pHealth,
        'p_damage': _pDamage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'p_health': serializeParam(
          _pHealth,
          ParamType.int,
        ),
        'p_damage': serializeParam(
          _pDamage,
          ParamType.int,
        ),
      }.withoutNulls;

  static PlayerStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlayerStruct(
        pHealth: deserializeParam(
          data['p_health'],
          ParamType.int,
          false,
        ),
        pDamage: deserializeParam(
          data['p_damage'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PlayerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlayerStruct &&
        pHealth == other.pHealth &&
        pDamage == other.pDamage;
  }

  @override
  int get hashCode => const ListEquality().hash([pHealth, pDamage]);
}

PlayerStruct createPlayerStruct({
  int? pHealth,
  int? pDamage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlayerStruct(
      pHealth: pHealth,
      pDamage: pDamage,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PlayerStruct? updatePlayerStruct(
  PlayerStruct? player, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    player
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPlayerStructData(
  Map<String, dynamic> firestoreData,
  PlayerStruct? player,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (player == null) {
    return;
  }
  if (player.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && player.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final playerData = getPlayerFirestoreData(player, forFieldValue);
  final nestedData = playerData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = player.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPlayerFirestoreData(
  PlayerStruct? player, [
  bool forFieldValue = false,
]) {
  if (player == null) {
    return {};
  }
  final firestoreData = mapToFirestore(player.toMap());

  // Add any Firestore field values
  player.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlayerListFirestoreData(
  List<PlayerStruct>? players,
) =>
    players?.map((e) => getPlayerFirestoreData(e, true)).toList() ?? [];
