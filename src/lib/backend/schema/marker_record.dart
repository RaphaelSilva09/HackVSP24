import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MarkerRecord extends FirestoreRecord {
  MarkerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "local_id" field.
  String? _localId;
  String get localId => _localId ?? '';
  bool hasLocalId() => _localId != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "localizaion" field.
  List<double>? _localizaion;
  List<double> get localizaion => _localizaion ?? const [];
  bool hasLocalizaion() => _localizaion != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _localId = snapshotData['local_id'] as String?;
    _imagem = snapshotData['imagem'] as String?;
    _description = snapshotData['description'] as String?;
    _localizaion = getDataList(snapshotData['localizaion']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('marker');

  static Stream<MarkerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MarkerRecord.fromSnapshot(s));

  static Future<MarkerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MarkerRecord.fromSnapshot(s));

  static MarkerRecord fromSnapshot(DocumentSnapshot snapshot) => MarkerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MarkerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MarkerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MarkerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MarkerRecord &&
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
        'nome': debugSerializeParam(
          nome,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: 'String',
          nullable: false,
        ),
        'local_id': debugSerializeParam(
          localId,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: 'String',
          nullable: false,
        ),
        'imagem': debugSerializeParam(
          imagem,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: 'String',
          nullable: false,
        ),
        'description': debugSerializeParam(
          description,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: 'String',
          nullable: false,
        ),
        'localizaion': debugSerializeParam(
          localizaion,
          ParamType.double,
          isList: true,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: 'double',
          nullable: false,
        )
      };
}

Map<String, dynamic> createMarkerRecordData({
  String? nome,
  String? localId,
  String? imagem,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'local_id': localId,
      'imagem': imagem,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class MarkerRecordDocumentEquality implements Equality<MarkerRecord> {
  const MarkerRecordDocumentEquality();

  @override
  bool equals(MarkerRecord? e1, MarkerRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        e1?.localId == e2?.localId &&
        e1?.imagem == e2?.imagem &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.localizaion, e2?.localizaion);
  }

  @override
  int hash(MarkerRecord? e) => const ListEquality()
      .hash([e?.nome, e?.localId, e?.imagem, e?.description, e?.localizaion]);

  @override
  bool isValidKey(Object? o) => o is MarkerRecord;
}
