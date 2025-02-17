import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopRecord extends FirestoreRecord {
  ShopRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sprite" field.
  String? _sprite;
  String get sprite => _sprite ?? '';
  bool hasSprite() => _sprite != null;

  // "item_id" field.
  int? _itemId;
  int get itemId => _itemId ?? 0;
  bool hasItemId() => _itemId != null;

  // "cost" field.
  int? _cost;
  int get cost => _cost ?? 0;
  bool hasCost() => _cost != null;

  void _initializeFields() {
    _sprite = snapshotData['sprite'] as String?;
    _itemId = castToType<int>(snapshotData['item_id']);
    _cost = castToType<int>(snapshotData['cost']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shop');

  static Stream<ShopRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShopRecord.fromSnapshot(s));

  static Future<ShopRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShopRecord.fromSnapshot(s));

  static ShopRecord fromSnapshot(DocumentSnapshot snapshot) => ShopRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShopRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShopRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShopRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShopRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShopRecordData({
  String? sprite,
  int? itemId,
  int? cost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sprite': sprite,
      'item_id': itemId,
      'cost': cost,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShopRecordDocumentEquality implements Equality<ShopRecord> {
  const ShopRecordDocumentEquality();

  @override
  bool equals(ShopRecord? e1, ShopRecord? e2) {
    return e1?.sprite == e2?.sprite &&
        e1?.itemId == e2?.itemId &&
        e1?.cost == e2?.cost;
  }

  @override
  int hash(ShopRecord? e) =>
      const ListEquality().hash([e?.sprite, e?.itemId, e?.cost]);

  @override
  bool isValidKey(Object? o) => o is ShopRecord;
}
