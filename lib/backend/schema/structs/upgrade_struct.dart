// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UpgradeStruct extends FFFirebaseStruct {
  UpgradeStruct({
    double? uHlthCost,
    double? uArmrCost,
    double? uDmgCost,
    int? uHlthLvl,
    int? uArmrLvl,
    int? uDmgLvl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _uHlthCost = uHlthCost,
        _uArmrCost = uArmrCost,
        _uDmgCost = uDmgCost,
        _uHlthLvl = uHlthLvl,
        _uArmrLvl = uArmrLvl,
        _uDmgLvl = uDmgLvl,
        super(firestoreUtilData);

  // "u_hlth_cost" field.
  double? _uHlthCost;
  double get uHlthCost => _uHlthCost ?? 1.0;
  set uHlthCost(double? val) => _uHlthCost = val;

  void incrementUHlthCost(double amount) => uHlthCost = uHlthCost + amount;

  bool hasUHlthCost() => _uHlthCost != null;

  // "u_armr_cost" field.
  double? _uArmrCost;
  double get uArmrCost => _uArmrCost ?? 1.0;
  set uArmrCost(double? val) => _uArmrCost = val;

  void incrementUArmrCost(double amount) => uArmrCost = uArmrCost + amount;

  bool hasUArmrCost() => _uArmrCost != null;

  // "u_dmg_cost" field.
  double? _uDmgCost;
  double get uDmgCost => _uDmgCost ?? 1.0;
  set uDmgCost(double? val) => _uDmgCost = val;

  void incrementUDmgCost(double amount) => uDmgCost = uDmgCost + amount;

  bool hasUDmgCost() => _uDmgCost != null;

  // "u_hlth_lvl" field.
  int? _uHlthLvl;
  int get uHlthLvl => _uHlthLvl ?? 1;
  set uHlthLvl(int? val) => _uHlthLvl = val;

  void incrementUHlthLvl(int amount) => uHlthLvl = uHlthLvl + amount;

  bool hasUHlthLvl() => _uHlthLvl != null;

  // "u_armr_lvl" field.
  int? _uArmrLvl;
  int get uArmrLvl => _uArmrLvl ?? 1;
  set uArmrLvl(int? val) => _uArmrLvl = val;

  void incrementUArmrLvl(int amount) => uArmrLvl = uArmrLvl + amount;

  bool hasUArmrLvl() => _uArmrLvl != null;

  // "u_dmg_lvl" field.
  int? _uDmgLvl;
  int get uDmgLvl => _uDmgLvl ?? 1;
  set uDmgLvl(int? val) => _uDmgLvl = val;

  void incrementUDmgLvl(int amount) => uDmgLvl = uDmgLvl + amount;

  bool hasUDmgLvl() => _uDmgLvl != null;

  static UpgradeStruct fromMap(Map<String, dynamic> data) => UpgradeStruct(
        uHlthCost: castToType<double>(data['u_hlth_cost']),
        uArmrCost: castToType<double>(data['u_armr_cost']),
        uDmgCost: castToType<double>(data['u_dmg_cost']),
        uHlthLvl: castToType<int>(data['u_hlth_lvl']),
        uArmrLvl: castToType<int>(data['u_armr_lvl']),
        uDmgLvl: castToType<int>(data['u_dmg_lvl']),
      );

  static UpgradeStruct? maybeFromMap(dynamic data) =>
      data is Map ? UpgradeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'u_hlth_cost': _uHlthCost,
        'u_armr_cost': _uArmrCost,
        'u_dmg_cost': _uDmgCost,
        'u_hlth_lvl': _uHlthLvl,
        'u_armr_lvl': _uArmrLvl,
        'u_dmg_lvl': _uDmgLvl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'u_hlth_cost': serializeParam(
          _uHlthCost,
          ParamType.double,
        ),
        'u_armr_cost': serializeParam(
          _uArmrCost,
          ParamType.double,
        ),
        'u_dmg_cost': serializeParam(
          _uDmgCost,
          ParamType.double,
        ),
        'u_hlth_lvl': serializeParam(
          _uHlthLvl,
          ParamType.int,
        ),
        'u_armr_lvl': serializeParam(
          _uArmrLvl,
          ParamType.int,
        ),
        'u_dmg_lvl': serializeParam(
          _uDmgLvl,
          ParamType.int,
        ),
      }.withoutNulls;

  static UpgradeStruct fromSerializableMap(Map<String, dynamic> data) =>
      UpgradeStruct(
        uHlthCost: deserializeParam(
          data['u_hlth_cost'],
          ParamType.double,
          false,
        ),
        uArmrCost: deserializeParam(
          data['u_armr_cost'],
          ParamType.double,
          false,
        ),
        uDmgCost: deserializeParam(
          data['u_dmg_cost'],
          ParamType.double,
          false,
        ),
        uHlthLvl: deserializeParam(
          data['u_hlth_lvl'],
          ParamType.int,
          false,
        ),
        uArmrLvl: deserializeParam(
          data['u_armr_lvl'],
          ParamType.int,
          false,
        ),
        uDmgLvl: deserializeParam(
          data['u_dmg_lvl'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UpgradeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UpgradeStruct &&
        uHlthCost == other.uHlthCost &&
        uArmrCost == other.uArmrCost &&
        uDmgCost == other.uDmgCost &&
        uHlthLvl == other.uHlthLvl &&
        uArmrLvl == other.uArmrLvl &&
        uDmgLvl == other.uDmgLvl;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([uHlthCost, uArmrCost, uDmgCost, uHlthLvl, uArmrLvl, uDmgLvl]);
}

UpgradeStruct createUpgradeStruct({
  double? uHlthCost,
  double? uArmrCost,
  double? uDmgCost,
  int? uHlthLvl,
  int? uArmrLvl,
  int? uDmgLvl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UpgradeStruct(
      uHlthCost: uHlthCost,
      uArmrCost: uArmrCost,
      uDmgCost: uDmgCost,
      uHlthLvl: uHlthLvl,
      uArmrLvl: uArmrLvl,
      uDmgLvl: uDmgLvl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UpgradeStruct? updateUpgradeStruct(
  UpgradeStruct? upgrade, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    upgrade
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUpgradeStructData(
  Map<String, dynamic> firestoreData,
  UpgradeStruct? upgrade,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (upgrade == null) {
    return;
  }
  if (upgrade.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && upgrade.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final upgradeData = getUpgradeFirestoreData(upgrade, forFieldValue);
  final nestedData = upgradeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = upgrade.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUpgradeFirestoreData(
  UpgradeStruct? upgrade, [
  bool forFieldValue = false,
]) {
  if (upgrade == null) {
    return {};
  }
  final firestoreData = mapToFirestore(upgrade.toMap());

  // Add any Firestore field values
  upgrade.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUpgradeListFirestoreData(
  List<UpgradeStruct>? upgrades,
) =>
    upgrades?.map((e) => getUpgradeFirestoreData(e, true)).toList() ?? [];
