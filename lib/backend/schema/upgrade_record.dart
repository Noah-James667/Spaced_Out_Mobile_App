import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UpgradeRecord extends FirestoreRecord {
  UpgradeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "upgrade_name" field.
  String? _upgradeName;
  String get upgradeName => _upgradeName ?? '';
  bool hasUpgradeName() => _upgradeName != null;

  // "upgrade_icon" field.
  String? _upgradeIcon;
  String get upgradeIcon => _upgradeIcon ?? '';
  bool hasUpgradeIcon() => _upgradeIcon != null;

  // "is_purchased" field.
  bool? _isPurchased;
  bool get isPurchased => _isPurchased ?? false;
  bool hasIsPurchased() => _isPurchased != null;

  // "upgrade_cost" field.
  int? _upgradeCost;
  int get upgradeCost => _upgradeCost ?? 0;
  bool hasUpgradeCost() => _upgradeCost != null;

  // "upgrade_multiplier" field.
  double? _upgradeMultiplier;
  double get upgradeMultiplier => _upgradeMultiplier ?? 0.0;
  bool hasUpgradeMultiplier() => _upgradeMultiplier != null;

  // "addition_per_second" field.
  double? _additionPerSecond;
  double get additionPerSecond => _additionPerSecond ?? 0.0;
  bool hasAdditionPerSecond() => _additionPerSecond != null;

  void _initializeFields() {
    _upgradeName = snapshotData['upgrade_name'] as String?;
    _upgradeIcon = snapshotData['upgrade_icon'] as String?;
    _isPurchased = snapshotData['is_purchased'] as bool?;
    _upgradeCost = castToType<int>(snapshotData['upgrade_cost']);
    _upgradeMultiplier = castToType<double>(snapshotData['upgrade_multiplier']);
    _additionPerSecond =
        castToType<double>(snapshotData['addition_per_second']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('upgrade');

  static Stream<UpgradeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UpgradeRecord.fromSnapshot(s));

  static Future<UpgradeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UpgradeRecord.fromSnapshot(s));

  static UpgradeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UpgradeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UpgradeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UpgradeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UpgradeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UpgradeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUpgradeRecordData({
  String? upgradeName,
  String? upgradeIcon,
  bool? isPurchased,
  int? upgradeCost,
  double? upgradeMultiplier,
  double? additionPerSecond,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'upgrade_name': upgradeName,
      'upgrade_icon': upgradeIcon,
      'is_purchased': isPurchased,
      'upgrade_cost': upgradeCost,
      'upgrade_multiplier': upgradeMultiplier,
      'addition_per_second': additionPerSecond,
    }.withoutNulls,
  );

  return firestoreData;
}

class UpgradeRecordDocumentEquality implements Equality<UpgradeRecord> {
  const UpgradeRecordDocumentEquality();

  @override
  bool equals(UpgradeRecord? e1, UpgradeRecord? e2) {
    return e1?.upgradeName == e2?.upgradeName &&
        e1?.upgradeIcon == e2?.upgradeIcon &&
        e1?.isPurchased == e2?.isPurchased &&
        e1?.upgradeCost == e2?.upgradeCost &&
        e1?.upgradeMultiplier == e2?.upgradeMultiplier &&
        e1?.additionPerSecond == e2?.additionPerSecond;
  }

  @override
  int hash(UpgradeRecord? e) => const ListEquality().hash([
        e?.upgradeName,
        e?.upgradeIcon,
        e?.isPurchased,
        e?.upgradeCost,
        e?.upgradeMultiplier,
        e?.additionPerSecond
      ]);

  @override
  bool isValidKey(Object? o) => o is UpgradeRecord;
}
