import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WeaponsRecord extends FirestoreRecord {
  WeaponsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "item_name" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _itemName = snapshotData['item_name'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('weapons')
          : FirebaseFirestore.instance.collectionGroup('weapons');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('weapons').doc(id);

  static Stream<WeaponsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WeaponsRecord.fromSnapshot(s));

  static Future<WeaponsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WeaponsRecord.fromSnapshot(s));

  static WeaponsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WeaponsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WeaponsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WeaponsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WeaponsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WeaponsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWeaponsRecordData({
  String? itemName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'item_name': itemName,
    }.withoutNulls,
  );

  return firestoreData;
}

class WeaponsRecordDocumentEquality implements Equality<WeaponsRecord> {
  const WeaponsRecordDocumentEquality();

  @override
  bool equals(WeaponsRecord? e1, WeaponsRecord? e2) {
    return e1?.itemName == e2?.itemName;
  }

  @override
  int hash(WeaponsRecord? e) => const ListEquality().hash([e?.itemName]);

  @override
  bool isValidKey(Object? o) => o is WeaponsRecord;
}
