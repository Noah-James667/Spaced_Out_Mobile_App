import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CosmeticsRecord extends FirestoreRecord {
  CosmeticsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "item_name" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "item_description" field.
  String? _itemDescription;
  String get itemDescription => _itemDescription ?? '';
  bool hasItemDescription() => _itemDescription != null;

  // "item_price" field.
  int? _itemPrice;
  int get itemPrice => _itemPrice ?? 0;
  bool hasItemPrice() => _itemPrice != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _itemName = snapshotData['item_name'] as String?;
    _itemDescription = snapshotData['item_description'] as String?;
    _itemPrice = castToType<int>(snapshotData['item_price']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('cosmetics')
          : FirebaseFirestore.instance.collectionGroup('cosmetics');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('cosmetics').doc(id);

  static Stream<CosmeticsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CosmeticsRecord.fromSnapshot(s));

  static Future<CosmeticsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CosmeticsRecord.fromSnapshot(s));

  static CosmeticsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CosmeticsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CosmeticsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CosmeticsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CosmeticsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CosmeticsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCosmeticsRecordData({
  String? itemName,
  String? itemDescription,
  int? itemPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'item_name': itemName,
      'item_description': itemDescription,
      'item_price': itemPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class CosmeticsRecordDocumentEquality implements Equality<CosmeticsRecord> {
  const CosmeticsRecordDocumentEquality();

  @override
  bool equals(CosmeticsRecord? e1, CosmeticsRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.itemDescription == e2?.itemDescription &&
        e1?.itemPrice == e2?.itemPrice;
  }

  @override
  int hash(CosmeticsRecord? e) => const ListEquality()
      .hash([e?.itemName, e?.itemDescription, e?.itemPrice]);

  @override
  bool isValidKey(Object? o) => o is CosmeticsRecord;
}
