// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UpgradeStruct extends FFFirebaseStruct {
  UpgradeStruct({
    String? uName,
    int? uCost,
    bool? uIsPurchased,
    String? uImage,
    double? uMultiplier,
    double? uAdditionPerSecond,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _uName = uName,
        _uCost = uCost,
        _uIsPurchased = uIsPurchased,
        _uImage = uImage,
        _uMultiplier = uMultiplier,
        _uAdditionPerSecond = uAdditionPerSecond,
        super(firestoreUtilData);

  // "u_name" field.
  String? _uName;
  String get uName => _uName ?? '';
  set uName(String? val) => _uName = val;

  bool hasUName() => _uName != null;

  // "u_cost" field.
  int? _uCost;
  int get uCost => _uCost ?? 0;
  set uCost(int? val) => _uCost = val;

  void incrementUCost(int amount) => uCost = uCost + amount;

  bool hasUCost() => _uCost != null;

  // "u_is_purchased" field.
  bool? _uIsPurchased;
  bool get uIsPurchased => _uIsPurchased ?? false;
  set uIsPurchased(bool? val) => _uIsPurchased = val;

  bool hasUIsPurchased() => _uIsPurchased != null;

  // "u_image" field.
  String? _uImage;
  String get uImage => _uImage ?? '';
  set uImage(String? val) => _uImage = val;

  bool hasUImage() => _uImage != null;

  // "u_multiplier" field.
  double? _uMultiplier;
  double get uMultiplier => _uMultiplier ?? 0.0;
  set uMultiplier(double? val) => _uMultiplier = val;

  void incrementUMultiplier(double amount) =>
      uMultiplier = uMultiplier + amount;

  bool hasUMultiplier() => _uMultiplier != null;

  // "u_addition_per_second" field.
  double? _uAdditionPerSecond;
  double get uAdditionPerSecond => _uAdditionPerSecond ?? 0.01;
  set uAdditionPerSecond(double? val) => _uAdditionPerSecond = val;

  void incrementUAdditionPerSecond(double amount) =>
      uAdditionPerSecond = uAdditionPerSecond + amount;

  bool hasUAdditionPerSecond() => _uAdditionPerSecond != null;

  static UpgradeStruct fromMap(Map<String, dynamic> data) => UpgradeStruct(
        uName: data['u_name'] as String?,
        uCost: castToType<int>(data['u_cost']),
        uIsPurchased: data['u_is_purchased'] as bool?,
        uImage: data['u_image'] as String?,
        uMultiplier: castToType<double>(data['u_multiplier']),
        uAdditionPerSecond: castToType<double>(data['u_addition_per_second']),
      );

  static UpgradeStruct? maybeFromMap(dynamic data) =>
      data is Map ? UpgradeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'u_name': _uName,
        'u_cost': _uCost,
        'u_is_purchased': _uIsPurchased,
        'u_image': _uImage,
        'u_multiplier': _uMultiplier,
        'u_addition_per_second': _uAdditionPerSecond,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'u_name': serializeParam(
          _uName,
          ParamType.String,
        ),
        'u_cost': serializeParam(
          _uCost,
          ParamType.int,
        ),
        'u_is_purchased': serializeParam(
          _uIsPurchased,
          ParamType.bool,
        ),
        'u_image': serializeParam(
          _uImage,
          ParamType.String,
        ),
        'u_multiplier': serializeParam(
          _uMultiplier,
          ParamType.double,
        ),
        'u_addition_per_second': serializeParam(
          _uAdditionPerSecond,
          ParamType.double,
        ),
      }.withoutNulls;

  static UpgradeStruct fromSerializableMap(Map<String, dynamic> data) =>
      UpgradeStruct(
        uName: deserializeParam(
          data['u_name'],
          ParamType.String,
          false,
        ),
        uCost: deserializeParam(
          data['u_cost'],
          ParamType.int,
          false,
        ),
        uIsPurchased: deserializeParam(
          data['u_is_purchased'],
          ParamType.bool,
          false,
        ),
        uImage: deserializeParam(
          data['u_image'],
          ParamType.String,
          false,
        ),
        uMultiplier: deserializeParam(
          data['u_multiplier'],
          ParamType.double,
          false,
        ),
        uAdditionPerSecond: deserializeParam(
          data['u_addition_per_second'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'UpgradeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UpgradeStruct &&
        uName == other.uName &&
        uCost == other.uCost &&
        uIsPurchased == other.uIsPurchased &&
        uImage == other.uImage &&
        uMultiplier == other.uMultiplier &&
        uAdditionPerSecond == other.uAdditionPerSecond;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [uName, uCost, uIsPurchased, uImage, uMultiplier, uAdditionPerSecond]);
}

UpgradeStruct createUpgradeStruct({
  String? uName,
  int? uCost,
  bool? uIsPurchased,
  String? uImage,
  double? uMultiplier,
  double? uAdditionPerSecond,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UpgradeStruct(
      uName: uName,
      uCost: uCost,
      uIsPurchased: uIsPurchased,
      uImage: uImage,
      uMultiplier: uMultiplier,
      uAdditionPerSecond: uAdditionPerSecond,
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
