import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopItemsRecord extends FirestoreRecord {
  ShopItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "users_shop_items" field.
  DocumentReference? _usersShopItems;
  DocumentReference? get usersShopItems => _usersShopItems;
  bool hasUsersShopItems() => _usersShopItems != null;

  // "small_sword" field.
  bool? _smallSword;
  bool get smallSword => _smallSword ?? false;
  bool hasSmallSword() => _smallSword != null;

  // "big_sword" field.
  bool? _bigSword;
  bool get bigSword => _bigSword ?? false;
  bool hasBigSword() => _bigSword != null;

  // "space_sword" field.
  bool? _spaceSword;
  bool get spaceSword => _spaceSword ?? false;
  bool hasSpaceSword() => _spaceSword != null;

  // "zapy_gun" field.
  bool? _zapyGun;
  bool get zapyGun => _zapyGun ?? false;
  bool hasZapyGun() => _zapyGun != null;

  // "big_gun" field.
  bool? _bigGun;
  bool get bigGun => _bigGun ?? false;
  bool hasBigGun() => _bigGun != null;

  // "cowboy_hat" field.
  bool? _cowboyHat;
  bool get cowboyHat => _cowboyHat ?? false;
  bool hasCowboyHat() => _cowboyHat != null;

  // "bow_hat" field.
  bool? _bowHat;
  bool get bowHat => _bowHat ?? false;
  bool hasBowHat() => _bowHat != null;

  // "pirate_hat" field.
  bool? _pirateHat;
  bool get pirateHat => _pirateHat ?? false;
  bool hasPirateHat() => _pirateHat != null;

  // "top_hat" field.
  bool? _topHat;
  bool get topHat => _topHat ?? false;
  bool hasTopHat() => _topHat != null;

  // "mushroom_hat" field.
  bool? _mushroomHat;
  bool get mushroomHat => _mushroomHat ?? false;
  bool hasMushroomHat() => _mushroomHat != null;

  // "unicorn_hat" field.
  bool? _unicornHat;
  bool get unicornHat => _unicornHat ?? false;
  bool hasUnicornHat() => _unicornHat != null;

  // "wizard_hat" field.
  bool? _wizardHat;
  bool get wizardHat => _wizardHat ?? false;
  bool hasWizardHat() => _wizardHat != null;

  // "red_pants" field.
  bool? _redPants;
  bool get redPants => _redPants ?? false;
  bool hasRedPants() => _redPants != null;

  // "dark_blue_pants" field.
  bool? _darkBluePants;
  bool get darkBluePants => _darkBluePants ?? false;
  bool hasDarkBluePants() => _darkBluePants != null;

  // "green_pants" field.
  bool? _greenPants;
  bool get greenPants => _greenPants ?? false;
  bool hasGreenPants() => _greenPants != null;

  // "yellow_pants" field.
  bool? _yellowPants;
  bool get yellowPants => _yellowPants ?? false;
  bool hasYellowPants() => _yellowPants != null;

  // "purple_pants" field.
  bool? _purplePants;
  bool get purplePants => _purplePants ?? false;
  bool hasPurplePants() => _purplePants != null;

  // "light_blue_pants" field.
  bool? _lightBluePants;
  bool get lightBluePants => _lightBluePants ?? false;
  bool hasLightBluePants() => _lightBluePants != null;

  // "red_ship" field.
  bool? _redShip;
  bool get redShip => _redShip ?? false;
  bool hasRedShip() => _redShip != null;

  // "dark_blue_ship" field.
  bool? _darkBlueShip;
  bool get darkBlueShip => _darkBlueShip ?? false;
  bool hasDarkBlueShip() => _darkBlueShip != null;

  // "green_ship" field.
  bool? _greenShip;
  bool get greenShip => _greenShip ?? false;
  bool hasGreenShip() => _greenShip != null;

  // "yellow_ship" field.
  bool? _yellowShip;
  bool get yellowShip => _yellowShip ?? false;
  bool hasYellowShip() => _yellowShip != null;

  // "purple_ship" field.
  bool? _purpleShip;
  bool get purpleShip => _purpleShip ?? false;
  bool hasPurpleShip() => _purpleShip != null;

  // "light_blue_ship" field.
  bool? _lightBlueShip;
  bool get lightBlueShip => _lightBlueShip ?? false;
  bool hasLightBlueShip() => _lightBlueShip != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _usersShopItems = snapshotData['users_shop_items'] as DocumentReference?;
    _smallSword = snapshotData['small_sword'] as bool?;
    _bigSword = snapshotData['big_sword'] as bool?;
    _spaceSword = snapshotData['space_sword'] as bool?;
    _zapyGun = snapshotData['zapy_gun'] as bool?;
    _bigGun = snapshotData['big_gun'] as bool?;
    _cowboyHat = snapshotData['cowboy_hat'] as bool?;
    _bowHat = snapshotData['bow_hat'] as bool?;
    _pirateHat = snapshotData['pirate_hat'] as bool?;
    _topHat = snapshotData['top_hat'] as bool?;
    _mushroomHat = snapshotData['mushroom_hat'] as bool?;
    _unicornHat = snapshotData['unicorn_hat'] as bool?;
    _wizardHat = snapshotData['wizard_hat'] as bool?;
    _redPants = snapshotData['red_pants'] as bool?;
    _darkBluePants = snapshotData['dark_blue_pants'] as bool?;
    _greenPants = snapshotData['green_pants'] as bool?;
    _yellowPants = snapshotData['yellow_pants'] as bool?;
    _purplePants = snapshotData['purple_pants'] as bool?;
    _lightBluePants = snapshotData['light_blue_pants'] as bool?;
    _redShip = snapshotData['red_ship'] as bool?;
    _darkBlueShip = snapshotData['dark_blue_ship'] as bool?;
    _greenShip = snapshotData['green_ship'] as bool?;
    _yellowShip = snapshotData['yellow_ship'] as bool?;
    _purpleShip = snapshotData['purple_ship'] as bool?;
    _lightBlueShip = snapshotData['light_blue_ship'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('shop_items')
          : FirebaseFirestore.instance.collectionGroup('shop_items');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('shop_items').doc(id);

  static Stream<ShopItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShopItemsRecord.fromSnapshot(s));

  static Future<ShopItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShopItemsRecord.fromSnapshot(s));

  static ShopItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShopItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShopItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShopItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShopItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShopItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShopItemsRecordData({
  DocumentReference? usersShopItems,
  bool? smallSword,
  bool? bigSword,
  bool? spaceSword,
  bool? zapyGun,
  bool? bigGun,
  bool? cowboyHat,
  bool? bowHat,
  bool? pirateHat,
  bool? topHat,
  bool? mushroomHat,
  bool? unicornHat,
  bool? wizardHat,
  bool? redPants,
  bool? darkBluePants,
  bool? greenPants,
  bool? yellowPants,
  bool? purplePants,
  bool? lightBluePants,
  bool? redShip,
  bool? darkBlueShip,
  bool? greenShip,
  bool? yellowShip,
  bool? purpleShip,
  bool? lightBlueShip,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'users_shop_items': usersShopItems,
      'small_sword': smallSword,
      'big_sword': bigSword,
      'space_sword': spaceSword,
      'zapy_gun': zapyGun,
      'big_gun': bigGun,
      'cowboy_hat': cowboyHat,
      'bow_hat': bowHat,
      'pirate_hat': pirateHat,
      'top_hat': topHat,
      'mushroom_hat': mushroomHat,
      'unicorn_hat': unicornHat,
      'wizard_hat': wizardHat,
      'red_pants': redPants,
      'dark_blue_pants': darkBluePants,
      'green_pants': greenPants,
      'yellow_pants': yellowPants,
      'purple_pants': purplePants,
      'light_blue_pants': lightBluePants,
      'red_ship': redShip,
      'dark_blue_ship': darkBlueShip,
      'green_ship': greenShip,
      'yellow_ship': yellowShip,
      'purple_ship': purpleShip,
      'light_blue_ship': lightBlueShip,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShopItemsRecordDocumentEquality implements Equality<ShopItemsRecord> {
  const ShopItemsRecordDocumentEquality();

  @override
  bool equals(ShopItemsRecord? e1, ShopItemsRecord? e2) {
    return e1?.usersShopItems == e2?.usersShopItems &&
        e1?.smallSword == e2?.smallSword &&
        e1?.bigSword == e2?.bigSword &&
        e1?.spaceSword == e2?.spaceSword &&
        e1?.zapyGun == e2?.zapyGun &&
        e1?.bigGun == e2?.bigGun &&
        e1?.cowboyHat == e2?.cowboyHat &&
        e1?.bowHat == e2?.bowHat &&
        e1?.pirateHat == e2?.pirateHat &&
        e1?.topHat == e2?.topHat &&
        e1?.mushroomHat == e2?.mushroomHat &&
        e1?.unicornHat == e2?.unicornHat &&
        e1?.wizardHat == e2?.wizardHat &&
        e1?.redPants == e2?.redPants &&
        e1?.darkBluePants == e2?.darkBluePants &&
        e1?.greenPants == e2?.greenPants &&
        e1?.yellowPants == e2?.yellowPants &&
        e1?.purplePants == e2?.purplePants &&
        e1?.lightBluePants == e2?.lightBluePants &&
        e1?.redShip == e2?.redShip &&
        e1?.darkBlueShip == e2?.darkBlueShip &&
        e1?.greenShip == e2?.greenShip &&
        e1?.yellowShip == e2?.yellowShip &&
        e1?.purpleShip == e2?.purpleShip &&
        e1?.lightBlueShip == e2?.lightBlueShip;
  }

  @override
  int hash(ShopItemsRecord? e) => const ListEquality().hash([
        e?.usersShopItems,
        e?.smallSword,
        e?.bigSword,
        e?.spaceSword,
        e?.zapyGun,
        e?.bigGun,
        e?.cowboyHat,
        e?.bowHat,
        e?.pirateHat,
        e?.topHat,
        e?.mushroomHat,
        e?.unicornHat,
        e?.wizardHat,
        e?.redPants,
        e?.darkBluePants,
        e?.greenPants,
        e?.yellowPants,
        e?.purplePants,
        e?.lightBluePants,
        e?.redShip,
        e?.darkBlueShip,
        e?.greenShip,
        e?.yellowShip,
        e?.purpleShip,
        e?.lightBlueShip
      ]);

  @override
  bool isValidKey(Object? o) => o is ShopItemsRecord;
}
