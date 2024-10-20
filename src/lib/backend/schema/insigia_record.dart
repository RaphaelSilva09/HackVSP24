import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InsigiaRecord extends FirestoreRecord {
  InsigiaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "marker_id" field.
  DocumentReference? _markerId;
  DocumentReference? get markerId => _markerId;
  bool hasMarkerId() => _markerId != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _markerId = snapshotData['marker_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('insigia');

  static Stream<InsigiaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InsigiaRecord.fromSnapshot(s));

  static Future<InsigiaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InsigiaRecord.fromSnapshot(s));

  static InsigiaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InsigiaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InsigiaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InsigiaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InsigiaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InsigiaRecord &&
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
        'image': debugSerializeParam(
          image,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: 'String',
          nullable: false,
        ),
        'marker_id': debugSerializeParam(
          markerId,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: 'marker',
          nullable: true,
        )
      };
}

Map<String, dynamic> createInsigiaRecordData({
  String? image,
  DocumentReference? markerId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'marker_id': markerId,
    }.withoutNulls,
  );

  return firestoreData;
}

class InsigiaRecordDocumentEquality implements Equality<InsigiaRecord> {
  const InsigiaRecordDocumentEquality();

  @override
  bool equals(InsigiaRecord? e1, InsigiaRecord? e2) {
    return e1?.image == e2?.image && e1?.markerId == e2?.markerId;
  }

  @override
  int hash(InsigiaRecord? e) =>
      const ListEquality().hash([e?.image, e?.markerId]);

  @override
  bool isValidKey(Object? o) => o is InsigiaRecord;
}
