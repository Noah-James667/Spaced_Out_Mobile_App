import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CosmeticShopRecord extends FirestoreRecord {
  CosmeticShopRecord._(
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

  // "is_purchased" field.
  bool? _isPurchased;
  bool get isPurchased => _isPurchased ?? false;
  bool hasIsPurchased() => _isPurchased != null;

  // "item_image" field.
  String? _itemImage;
  String get itemImage => _itemImage ?? '';
  bool hasItemImage() => _itemImage != null;

  // "item_price" field.
  int? _itemPrice;
  int get itemPrice => _itemPrice ?? 0;
  bool hasItemPrice() => _itemPrice != null;

  void _initializeFields() {
    _itemName = snapshotData['item_name'] as String?;
    _itemDescription = snapshotData['item_description'] as String?;
    _isPurchased = snapshotData['is_purchased'] as bool?;
    _itemImage = snapshotData['item_image'] as String?;
    _itemPrice = castToType<int>(snapshotData['item_price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cosmetic_shop');

  static Stream<CosmeticShopRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CosmeticShopRecord.fromSnapshot(s));

  static Future<CosmeticShopRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CosmeticShopRecord.fromSnapshot(s));

  static CosmeticShopRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CosmeticShopRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CosmeticShopRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CosmeticShopRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CosmeticShopRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CosmeticShopRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCosmeticShopRecordData({
  String? itemName,
  String? itemDescription,
  bool? isPurchased,
  String? itemImage,
  int? itemPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'item_name': itemName,
      'item_description': itemDescription,
      'is_purchased': isPurchased,
      'item_image': itemImage,
      'item_price': itemPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class CosmeticShopRecordDocumentEquality
    implements Equality<CosmeticShopRecord> {
  const CosmeticShopRecordDocumentEquality();

  @override
  bool equals(CosmeticShopRecord? e1, CosmeticShopRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.itemDescription == e2?.itemDescription &&
        e1?.isPurchased == e2?.isPurchased &&
        e1?.itemImage == e2?.itemImage &&
        e1?.itemPrice == e2?.itemPrice;
  }

  @override
  int hash(CosmeticShopRecord? e) => const ListEquality().hash([
        e?.itemName,
        e?.itemDescription,
        e?.isPurchased,
        e?.itemImage,
        e?.itemPrice
      ]);

  @override
  bool isValidKey(Object? o) => o is CosmeticShopRecord;
}
