import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestRankRecord extends FirestoreRecord {
  TestRankRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  bool hasScore() => _score != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _score = castToType<int>(snapshotData['score']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('test_rank');

  static Stream<TestRankRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TestRankRecord.fromSnapshot(s));

  static Future<TestRankRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TestRankRecord.fromSnapshot(s));

  static TestRankRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TestRankRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TestRankRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TestRankRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TestRankRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TestRankRecord &&
      reference.path.hashCode == other.reference.path.hashCode;

  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'reference': debugSerializeParam(
          reference,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: '',
          nullable: false,
        ),
        'name': debugSerializeParam(
          name,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: 'String',
          nullable: false,
        ),
        'score': debugSerializeParam(
          score,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: 'int',
          nullable: false,
        )
      };
}

Map<String, dynamic> createTestRankRecordData({
  String? name,
  int? score,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'score': score,
    }.withoutNulls,
  );

  return firestoreData;
}

class TestRankRecordDocumentEquality implements Equality<TestRankRecord> {
  const TestRankRecordDocumentEquality();

  @override
  bool equals(TestRankRecord? e1, TestRankRecord? e2) {
    return e1?.name == e2?.name && e1?.score == e2?.score;
  }

  @override
  int hash(TestRankRecord? e) => const ListEquality().hash([e?.name, e?.score]);

  @override
  bool isValidKey(Object? o) => o is TestRankRecord;
}
