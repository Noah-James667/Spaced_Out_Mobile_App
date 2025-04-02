// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PlayerStruct extends FFFirebaseStruct {
  PlayerStruct({
    double? pHealth,
    double? pDmg,
    double? pArmr,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pHealth = pHealth,
        _pDmg = pDmg,
        _pArmr = pArmr,
        super(firestoreUtilData);

  // "p_health" field.
  double? _pHealth;
  double get pHealth => _pHealth ?? 1.0;
  set pHealth(double? val) => _pHealth = val;

  void incrementPHealth(double amount) => pHealth = pHealth + amount;

  bool hasPHealth() => _pHealth != null;

  // "p_dmg" field.
  double? _pDmg;
  double get pDmg => _pDmg ?? 1.0;
  set pDmg(double? val) => _pDmg = val;

  void incrementPDmg(double amount) => pDmg = pDmg + amount;

  bool hasPDmg() => _pDmg != null;

  // "p_armr" field.
  double? _pArmr;
  double get pArmr => _pArmr ?? 1.0;
  set pArmr(double? val) => _pArmr = val;

  void incrementPArmr(double amount) => pArmr = pArmr + amount;

  bool hasPArmr() => _pArmr != null;

  static PlayerStruct fromMap(Map<String, dynamic> data) => PlayerStruct(
        pHealth: castToType<double>(data['p_health']),
        pDmg: castToType<double>(data['p_dmg']),
        pArmr: castToType<double>(data['p_armr']),
      );

  static PlayerStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlayerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'p_health': _pHealth,
        'p_dmg': _pDmg,
        'p_armr': _pArmr,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'p_health': serializeParam(
          _pHealth,
          ParamType.double,
        ),
        'p_dmg': serializeParam(
          _pDmg,
          ParamType.double,
        ),
        'p_armr': serializeParam(
          _pArmr,
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
        pDmg: deserializeParam(
          data['p_dmg'],
          ParamType.double,
          false,
        ),
        pArmr: deserializeParam(
          data['p_armr'],
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
        pDmg == other.pDmg &&
        pArmr == other.pArmr;
  }

  @override
  int get hashCode => const ListEquality().hash([pHealth, pDmg, pArmr]);
}

PlayerStruct createPlayerStruct({
  double? pHealth,
  double? pDmg,
  double? pArmr,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlayerStruct(
      pHealth: pHealth,
      pDmg: pDmg,
      pArmr: pArmr,
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
