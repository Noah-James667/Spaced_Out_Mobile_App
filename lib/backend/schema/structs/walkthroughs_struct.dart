// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class WalkthroughsStruct extends FFFirebaseStruct {
  WalkthroughsStruct({
    bool? tasksPage,
    bool? equipPage,
    bool? shopPage,
    bool? gamePage,
    bool? agendaPage,
    int? taskPageInt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tasksPage = tasksPage,
        _equipPage = equipPage,
        _shopPage = shopPage,
        _gamePage = gamePage,
        _agendaPage = agendaPage,
        _taskPageInt = taskPageInt,
        super(firestoreUtilData);

  // "tasksPage" field.
  bool? _tasksPage;
  bool get tasksPage => _tasksPage ?? false;
  set tasksPage(bool? val) => _tasksPage = val;

  bool hasTasksPage() => _tasksPage != null;

  // "equipPage" field.
  bool? _equipPage;
  bool get equipPage => _equipPage ?? false;
  set equipPage(bool? val) => _equipPage = val;

  bool hasEquipPage() => _equipPage != null;

  // "shopPage" field.
  bool? _shopPage;
  bool get shopPage => _shopPage ?? false;
  set shopPage(bool? val) => _shopPage = val;

  bool hasShopPage() => _shopPage != null;

  // "gamePage" field.
  bool? _gamePage;
  bool get gamePage => _gamePage ?? false;
  set gamePage(bool? val) => _gamePage = val;

  bool hasGamePage() => _gamePage != null;

  // "agendaPage" field.
  bool? _agendaPage;
  bool get agendaPage => _agendaPage ?? false;
  set agendaPage(bool? val) => _agendaPage = val;

  bool hasAgendaPage() => _agendaPage != null;

  // "taskPageInt" field.
  int? _taskPageInt;
  int get taskPageInt => _taskPageInt ?? 0;
  set taskPageInt(int? val) => _taskPageInt = val;

  void incrementTaskPageInt(int amount) => taskPageInt = taskPageInt + amount;

  bool hasTaskPageInt() => _taskPageInt != null;

  static WalkthroughsStruct fromMap(Map<String, dynamic> data) =>
      WalkthroughsStruct(
        tasksPage: data['tasksPage'] as bool?,
        equipPage: data['equipPage'] as bool?,
        shopPage: data['shopPage'] as bool?,
        gamePage: data['gamePage'] as bool?,
        agendaPage: data['agendaPage'] as bool?,
        taskPageInt: castToType<int>(data['taskPageInt']),
      );

  static WalkthroughsStruct? maybeFromMap(dynamic data) => data is Map
      ? WalkthroughsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tasksPage': _tasksPage,
        'equipPage': _equipPage,
        'shopPage': _shopPage,
        'gamePage': _gamePage,
        'agendaPage': _agendaPage,
        'taskPageInt': _taskPageInt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tasksPage': serializeParam(
          _tasksPage,
          ParamType.bool,
        ),
        'equipPage': serializeParam(
          _equipPage,
          ParamType.bool,
        ),
        'shopPage': serializeParam(
          _shopPage,
          ParamType.bool,
        ),
        'gamePage': serializeParam(
          _gamePage,
          ParamType.bool,
        ),
        'agendaPage': serializeParam(
          _agendaPage,
          ParamType.bool,
        ),
        'taskPageInt': serializeParam(
          _taskPageInt,
          ParamType.int,
        ),
      }.withoutNulls;

  static WalkthroughsStruct fromSerializableMap(Map<String, dynamic> data) =>
      WalkthroughsStruct(
        tasksPage: deserializeParam(
          data['tasksPage'],
          ParamType.bool,
          false,
        ),
        equipPage: deserializeParam(
          data['equipPage'],
          ParamType.bool,
          false,
        ),
        shopPage: deserializeParam(
          data['shopPage'],
          ParamType.bool,
          false,
        ),
        gamePage: deserializeParam(
          data['gamePage'],
          ParamType.bool,
          false,
        ),
        agendaPage: deserializeParam(
          data['agendaPage'],
          ParamType.bool,
          false,
        ),
        taskPageInt: deserializeParam(
          data['taskPageInt'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'WalkthroughsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WalkthroughsStruct &&
        tasksPage == other.tasksPage &&
        equipPage == other.equipPage &&
        shopPage == other.shopPage &&
        gamePage == other.gamePage &&
        agendaPage == other.agendaPage &&
        taskPageInt == other.taskPageInt;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [tasksPage, equipPage, shopPage, gamePage, agendaPage, taskPageInt]);
}

WalkthroughsStruct createWalkthroughsStruct({
  bool? tasksPage,
  bool? equipPage,
  bool? shopPage,
  bool? gamePage,
  bool? agendaPage,
  int? taskPageInt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WalkthroughsStruct(
      tasksPage: tasksPage,
      equipPage: equipPage,
      shopPage: shopPage,
      gamePage: gamePage,
      agendaPage: agendaPage,
      taskPageInt: taskPageInt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WalkthroughsStruct? updateWalkthroughsStruct(
  WalkthroughsStruct? walkthroughs, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    walkthroughs
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWalkthroughsStructData(
  Map<String, dynamic> firestoreData,
  WalkthroughsStruct? walkthroughs,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (walkthroughs == null) {
    return;
  }
  if (walkthroughs.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && walkthroughs.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final walkthroughsData =
      getWalkthroughsFirestoreData(walkthroughs, forFieldValue);
  final nestedData =
      walkthroughsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = walkthroughs.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWalkthroughsFirestoreData(
  WalkthroughsStruct? walkthroughs, [
  bool forFieldValue = false,
]) {
  if (walkthroughs == null) {
    return {};
  }
  final firestoreData = mapToFirestore(walkthroughs.toMap());

  // Add any Firestore field values
  walkthroughs.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWalkthroughsListFirestoreData(
  List<WalkthroughsStruct>? walkthroughss,
) =>
    walkthroughss?.map((e) => getWalkthroughsFirestoreData(e, true)).toList() ??
    [];
