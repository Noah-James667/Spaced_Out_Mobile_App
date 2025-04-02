import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "coins" field.
  int? _coins;
  int get coins => _coins ?? 0;
  bool hasCoins() => _coins != null;

  // "xp" field.
  int? _xp;
  int get xp => _xp ?? 0;
  bool hasXp() => _xp != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "damage" field.
  double? _damage;
  double get damage => _damage ?? 0.0;
  bool hasDamage() => _damage != null;

  // "damage_up_cost" field.
  int? _damageUpCost;
  int get damageUpCost => _damageUpCost ?? 0;
  bool hasDamageUpCost() => _damageUpCost != null;

  // "task_added" field.
  int? _taskAdded;
  int get taskAdded => _taskAdded ?? 0;
  bool hasTaskAdded() => _taskAdded != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _coins = castToType<int>(snapshotData['coins']);
    _xp = castToType<int>(snapshotData['xp']);
    _displayName = snapshotData['display_name'] as String?;
    _damage = castToType<double>(snapshotData['damage']);
    _damageUpCost = castToType<int>(snapshotData['damage_up_cost']);
    _taskAdded = castToType<int>(snapshotData['task_added']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? coins,
  int? xp,
  String? displayName,
  double? damage,
  int? damageUpCost,
  int? taskAdded,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'coins': coins,
      'xp': xp,
      'display_name': displayName,
      'damage': damage,
      'damage_up_cost': damageUpCost,
      'task_added': taskAdded,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.coins == e2?.coins &&
        e1?.xp == e2?.xp &&
        e1?.displayName == e2?.displayName &&
        e1?.damage == e2?.damage &&
        e1?.damageUpCost == e2?.damageUpCost &&
        e1?.taskAdded == e2?.taskAdded;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.coins,
        e?.xp,
        e?.displayName,
        e?.damage,
        e?.damageUpCost,
        e?.taskAdded
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
