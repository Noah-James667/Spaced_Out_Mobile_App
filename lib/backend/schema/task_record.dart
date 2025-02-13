import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskRecord extends FirestoreRecord {
  TaskRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "task_name" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "task_description" field.
  String? _taskDescription;
  String get taskDescription => _taskDescription ?? '';
  bool hasTaskDescription() => _taskDescription != null;

  // "complete_by" field.
  DateTime? _completeBy;
  DateTime? get completeBy => _completeBy;
  bool hasCompleteBy() => _completeBy != null;

  // "is_complete" field.
  bool? _isComplete;
  bool get isComplete => _isComplete ?? false;
  bool hasIsComplete() => _isComplete != null;

  // "is_repeating" field.
  bool? _isRepeating;
  bool get isRepeating => _isRepeating ?? false;
  bool hasIsRepeating() => _isRepeating != null;

  // "difficulty_lvl" field.
  int? _difficultyLvl;
  int get difficultyLvl => _difficultyLvl ?? 0;
  bool hasDifficultyLvl() => _difficultyLvl != null;

  // "xp_weight" field.
  int? _xpWeight;
  int get xpWeight => _xpWeight ?? 0;
  bool hasXpWeight() => _xpWeight != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _taskName = snapshotData['task_name'] as String?;
    _taskDescription = snapshotData['task_description'] as String?;
    _completeBy = snapshotData['complete_by'] as DateTime?;
    _isComplete = snapshotData['is_complete'] as bool?;
    _isRepeating = snapshotData['is_repeating'] as bool?;
    _difficultyLvl = castToType<int>(snapshotData['difficulty_lvl']);
    _xpWeight = castToType<int>(snapshotData['xp_weight']);
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
  DocumentReference? user,
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
      'user': user,
      'task_name': taskName,
      'task_description': taskDescription,
      'complete_by': completeBy,
      'is_complete': isComplete,
      'is_repeating': isRepeating,
      'difficulty_lvl': difficultyLvl,
      'xp_weight': xpWeight,
    }.withoutNulls,
  );

  return firestoreData;
}

class TaskRecordDocumentEquality implements Equality<TaskRecord> {
  const TaskRecordDocumentEquality();

  @override
  bool equals(TaskRecord? e1, TaskRecord? e2) {
    return e1?.user == e2?.user &&
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
        e?.user,
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
