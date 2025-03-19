// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PlayerStruct extends FFFirebaseStruct {
  PlayerStruct({
    double? pHealth,
    double? pDamage,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pHealth = pHealth,
        _pDamage = pDamage,
        super(firestoreUtilData);

  // "p_health" field.
  double? _pHealth;
  double get pHealth => _pHealth ?? 1.0;
  set pHealth(double? val) => _pHealth = val;

  void incrementPHealth(double amount) => pHealth = pHealth + amount;

  bool hasPHealth() => _pHealth != null;

  // "p_damage" field.
  double? _pDamage;
  double get pDamage => _pDamage ?? .1;
  set pDamage(double? val) => _pDamage = val;

  void incrementPDamage(double amount) => pDamage = pDamage + amount;

  bool hasPDamage() => _pDamage != null;

  static PlayerStruct fromMap(Map<String, dynamic> data) => PlayerStruct(
        pHealth: castToType<double>(data['p_health']),
        pDamage: castToType<double>(data['p_damage']),
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
          ParamType.double,
        ),
        'p_damage': serializeParam(
          _pDamage,
          ParamType.double,
        ),
      }.withoutNulls;

  static PlayerStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlayerStruct(
        pHealth: deserializeParam(
          data['p_health'],
          ParamType.double,
          false,
        ),
        pDamage: deserializeParam(
          data['p_damage'],
          ParamType.double,
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
  double? pHealth,
  double? pDamage,
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
