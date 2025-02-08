import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskRecord extends FirestoreRecord {
  TaskRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "account" field.
  DocumentReference? _account;
  DocumentReference? get account => _account;
  bool hasAccount() => _account != null;

  // "taskName" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "taskDescription" field.
  String? _taskDescription;
  String get taskDescription => _taskDescription ?? '';
  bool hasTaskDescription() => _taskDescription != null;

  // "completeBy" field.
  DateTime? _completeBy;
  DateTime? get completeBy => _completeBy;
  bool hasCompleteBy() => _completeBy != null;

  // "isComplete" field.
  bool? _isComplete;
  bool get isComplete => _isComplete ?? false;
  bool hasIsComplete() => _isComplete != null;

  // "isRepeating" field.
  bool? _isRepeating;
  bool get isRepeating => _isRepeating ?? false;
  bool hasIsRepeating() => _isRepeating != null;

  // "difficultyLvl" field.
  int? _difficultyLvl;
  int get difficultyLvl => _difficultyLvl ?? 0;
  bool hasDifficultyLvl() => _difficultyLvl != null;

  // "xpWeight" field.
  int? _xpWeight;
  int get xpWeight => _xpWeight ?? 0;
  bool hasXpWeight() => _xpWeight != null;

  void _initializeFields() {
    _account = snapshotData['account'] as DocumentReference?;
    _taskName = snapshotData['taskName'] as String?;
    _taskDescription = snapshotData['taskDescription'] as String?;
    _completeBy = snapshotData['completeBy'] as DateTime?;
    _isComplete = snapshotData['isComplete'] as bool?;
    _isRepeating = snapshotData['isRepeating'] as bool?;
    _difficultyLvl = castToType<int>(snapshotData['difficultyLvl']);
    _xpWeight = castToType<int>(snapshotData['xpWeight']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('task');

  static Stream<TaskRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TaskRecord.fromSnapshot(s));

  static Future<TaskRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TaskRecord.fromSnapshot(s));

  static TaskRecord fromSnapshot(DocumentSnapshot snapshot) => TaskRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TaskRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TaskRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TaskRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TaskRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTaskRecordData({
  DocumentReference? account,
  String? taskName,
  String? taskDescription,
  DateTime? completeBy,
  bool? isComplete,
  bool? isRepeating,
  int? difficultyLvl,
  int? xpWeight,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'account': account,
      'taskName': taskName,
      'taskDescription': taskDescription,
      'completeBy': completeBy,
      'isComplete': isComplete,
      'isRepeating': isRepeating,
      'difficultyLvl': difficultyLvl,
      'xpWeight': xpWeight,
    }.withoutNulls,
  );

  return firestoreData;
}

class TaskRecordDocumentEquality implements Equality<TaskRecord> {
  const TaskRecordDocumentEquality();

  @override
  bool equals(TaskRecord? e1, TaskRecord? e2) {
    return e1?.account == e2?.account &&
        e1?.taskName == e2?.taskName &&
        e1?.taskDescription == e2?.taskDescription &&
        e1?.completeBy == e2?.completeBy &&
        e1?.isComplete == e2?.isComplete &&
        e1?.isRepeating == e2?.isRepeating &&
        e1?.difficultyLvl == e2?.difficultyLvl &&
        e1?.xpWeight == e2?.xpWeight;
  }

  @override
  int hash(TaskRecord? e) => const ListEquality().hash([
        e?.account,
        e?.taskName,
        e?.taskDescription,
        e?.completeBy,
        e?.isComplete,
        e?.isRepeating,
        e?.difficultyLvl,
        e?.xpWeight
      ]);

  @override
  bool isValidKey(Object? o) => o is TaskRecord;
}
