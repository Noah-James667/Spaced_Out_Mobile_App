import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShipShopRecord extends FirestoreRecord {
  ShipShopRecord._(
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

  // "item_image" field.
  String? _itemImage;
  String get itemImage => _itemImage ?? '';
  bool hasItemImage() => _itemImage != null;

  void _initializeFields() {
    _itemName = snapshotData['item_name'] as String?;
    _itemDescription = snapshotData['item_description'] as String?;
    _itemPrice = castToType<int>(snapshotData['item_price']);
    _isPurchased = snapshotData['is_purchased'] as bool?;
    _itemImage = snapshotData['item_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ship_shop');

  static Stream<ShipShopRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShipShopRecord.fromSnapshot(s));

  static Future<ShipShopRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShipShopRecord.fromSnapshot(s));

  static ShipShopRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShipShopRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShipShopRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShipShopRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShipShopRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShipShopRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShipShopRecordData({
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
      'item_price': itemPrice,
      'is_purchased': isPurchased,
      'item_image': itemImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShipShopRecordDocumentEquality implements Equality<ShipShopRecord> {
  const ShipShopRecordDocumentEquality();

  @override
  bool equals(ShipShopRecord? e1, ShipShopRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.itemDescription == e2?.itemDescription &&
        e1?.itemPrice == e2?.itemPrice &&
        e1?.isPurchased == e2?.isPurchased &&
        e1?.itemImage == e2?.itemImage;
  }

  @override
  int hash(ShipShopRecord? e) => const ListEquality().hash([
        e?.itemName,
        e?.itemDescription,
        e?.itemPrice,
        e?.isPurchased,
        e?.itemImage
      ]);

  @override
  bool isValidKey(Object? o) => o is ShipShopRecord;
}
