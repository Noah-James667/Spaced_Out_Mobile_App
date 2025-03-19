import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WeaponsShopRecord extends FirestoreRecord {
  WeaponsShopRecord._(
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

  // "Item_price" field.
  int? _itemPrice;
  int get itemPrice => _itemPrice ?? 0;
  bool hasItemPrice() => _itemPrice != null;

  // "is_purchased" field.
  bool? _isPurchased;
  bool get isPurchased => _isPurchased ?? false;
  bool hasIsPurchased() => _isPurchased != null;

  // "item_image" field.
  String? _itemImage;
  String get itemImage => _itemImage ?? '';
  bool hasItemImage() => _itemImage != null;

  void _initializeFields() {
    _itemName = snapshotData['item_name'] as String?;
    _itemDescription = snapshotData['item_description'] as String?;
    _itemPrice = castToType<int>(snapshotData['Item_price']);
    _isPurchased = snapshotData['is_purchased'] as bool?;
    _itemImage = snapshotData['item_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('weapons_shop');

  static Stream<WeaponsShopRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WeaponsShopRecord.fromSnapshot(s));

  static Future<WeaponsShopRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WeaponsShopRecord.fromSnapshot(s));

  static WeaponsShopRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WeaponsShopRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WeaponsShopRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WeaponsShopRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WeaponsShopRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WeaponsShopRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWeaponsShopRecordData({
  String? itemName,
  String? itemDescription,
  int? itemPrice,
  bool? isPurchased,
  String? itemImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'item_name': itemName,
      'item_description': itemDescription,
      'Item_price': itemPrice,
      'is_purchased': isPurchased,
      'item_image': itemImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class WeaponsShopRecordDocumentEquality implements Equality<WeaponsShopRecord> {
  const WeaponsShopRecordDocumentEquality();

  @override
  bool equals(WeaponsShopRecord? e1, WeaponsShopRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.itemDescription == e2?.itemDescription &&
        e1?.itemPrice == e2?.itemPrice &&
        e1?.isPurchased == e2?.isPurchased &&
        e1?.itemImage == e2?.itemImage;
  }

  @override
  int hash(WeaponsShopRecord? e) => const ListEquality().hash([
        e?.itemName,
        e?.itemDescription,
        e?.itemPrice,
        e?.isPurchased,
        e?.itemImage
      ]);

  @override
  bool isValidKey(Object? o) => o is WeaponsShopRecord;
}
