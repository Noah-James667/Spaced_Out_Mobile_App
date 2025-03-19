// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class EnemyStruct extends FFFirebaseStruct {
  EnemyStruct({
    double? eHealth,
    double? eDmg,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _eHealth = eHealth,
        _eDmg = eDmg,
        super(firestoreUtilData);

  // "e_health" field.
  double? _eHealth;
  double get eHealth => _eHealth ?? 1.0;
  set eHealth(double? val) => _eHealth = val;

  void incrementEHealth(double amount) => eHealth = eHealth + amount;

  bool hasEHealth() => _eHealth != null;

  // "e_dmg" field.
  double? _eDmg;
  double get eDmg => _eDmg ?? .1;
  set eDmg(double? val) => _eDmg = val;

  void incrementEDmg(double amount) => eDmg = eDmg + amount;

  bool hasEDmg() => _eDmg != null;

  static EnemyStruct fromMap(Map<String, dynamic> data) => EnemyStruct(
        eHealth: castToType<double>(data['e_health']),
        eDmg: castToType<double>(data['e_dmg']),
      );

  static EnemyStruct? maybeFromMap(dynamic data) =>
      data is Map ? EnemyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'e_health': _eHealth,
        'e_dmg': _eDmg,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'e_health': serializeParam(
          _eHealth,
          ParamType.double,
        ),
        'e_dmg': serializeParam(
          _eDmg,
          ParamType.double,
        ),
      }.withoutNulls;

  static EnemyStruct fromSerializableMap(Map<String, dynamic> data) =>
      EnemyStruct(
        eHealth: deserializeParam(
          data['e_health'],
          ParamType.double,
          false,
        ),
        eDmg: deserializeParam(
          data['e_dmg'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'EnemyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EnemyStruct &&
        eHealth == other.eHealth &&
        eDmg == other.eDmg;
  }

  @override
  int get hashCode => const ListEquality().hash([eHealth, eDmg]);
}

EnemyStruct createEnemyStruct({
  double? eHealth,
  double? eDmg,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EnemyStruct(
      eHealth: eHealth,
      eDmg: eDmg,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EnemyStruct? updateEnemyStruct(
  EnemyStruct? enemy, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    enemy
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEnemyStructData(
  Map<String, dynamic> firestoreData,
  EnemyStruct? enemy,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (enemy == null) {
    return;
  }
  if (enemy.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && enemy.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final enemyData = getEnemyFirestoreData(enemy, forFieldValue);
  final nestedData = enemyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = enemy.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEnemyFirestoreData(
  EnemyStruct? enemy, [
  bool forFieldValue = false,
]) {
  if (enemy == null) {
    return {};
  }
  final firestoreData = mapToFirestore(enemy.toMap());

  // Add any Firestore field values
  enemy.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEnemyListFirestoreData(
  List<EnemyStruct>? enemys,
) =>
    enemys?.map((e) => getEnemyFirestoreData(e, true)).toList() ?? [];
