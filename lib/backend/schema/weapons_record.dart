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

  // "item_description" field.
  String? _itemDescription;
  String get itemDescription => _itemDescription ?? '';
  bool hasItemDescription() => _itemDescription != null;

  // "item_price" field.
  int? _itemPrice;
  int get itemPrice => _itemPrice ?? 0;
  bool hasItemPrice() => _itemPrice != null;

  // "is_purchased" field.
  bool? _isPurchased;
  bool get isPurchased => _isPurchased ?? false;
  bool hasIsPurchased() => _isPurchased != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _itemName = snapshotData['item_name'] as String?;
    _itemDescription = snapshotData['item_description'] as String?;
    _itemPrice = castToType<int>(snapshotData['item_price']);
    _isPurchased = snapshotData['is_purchased'] as bool?;
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
  String? itemDescription,
  int? itemPrice,
  bool? isPurchased,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'item_name': itemName,
      'item_description': itemDescription,
      'item_price': itemPrice,
      'is_purchased': isPurchased,
    }.withoutNulls,
  );

  return firestoreData;
}

class WeaponsRecordDocumentEquality implements Equality<WeaponsRecord> {
  const WeaponsRecordDocumentEquality();

  @override
  bool equals(WeaponsRecord? e1, WeaponsRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.itemDescription == e2?.itemDescription &&
        e1?.itemPrice == e2?.itemPrice &&
        e1?.isPurchased == e2?.isPurchased;
  }

  @override
  int hash(WeaponsRecord? e) => const ListEquality()
      .hash([e?.itemName, e?.itemDescription, e?.itemPrice, e?.isPurchased]);

  @override
  bool isValidKey(Object? o) => o is WeaponsRecord;
}
