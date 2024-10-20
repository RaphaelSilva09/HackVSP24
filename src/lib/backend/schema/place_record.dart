import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlaceRecord extends FirestoreRecord {
  PlaceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  bool hasLongitude() => _longitude != null;

  void _initializeFields() {
    _descricao = snapshotData['descricao'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _imageUrl = snapshotData['image_url'] as String?;
    _latitude = castToType<double>(snapshotData['latitude']);
    _longitude = castToType<double>(snapshotData['longitude']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('place');

  static Stream<PlaceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlaceRecord.fromSnapshot(s));

  static Future<PlaceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlaceRecord.fromSnapshot(s));

  static PlaceRecord fromSnapshot(DocumentSnapshot snapshot) => PlaceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlaceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlaceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlaceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlaceRecord &&
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
        'descricao': debugSerializeParam(
          descricao,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: 'String',
          nullable: false,
        ),
        'titulo': debugSerializeParam(
          titulo,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: 'String',
          nullable: false,
        ),
        'image_url': debugSerializeParam(
          imageUrl,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: 'String',
          nullable: false,
        ),
        'latitude': debugSerializeParam(
          latitude,
          ParamType.double,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: 'double',
          nullable: false,
        ),
        'longitude': debugSerializeParam(
          longitude,
          ParamType.double,
          link:
              'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=database',
          name: 'double',
          nullable: false,
        )
      };
}

Map<String, dynamic> createPlaceRecordData({
  String? descricao,
  String? titulo,
  String? imageUrl,
  double? latitude,
  double? longitude,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descricao': descricao,
      'titulo': titulo,
      'image_url': imageUrl,
      'latitude': latitude,
      'longitude': longitude,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlaceRecordDocumentEquality implements Equality<PlaceRecord> {
  const PlaceRecordDocumentEquality();

  @override
  bool equals(PlaceRecord? e1, PlaceRecord? e2) {
    return e1?.descricao == e2?.descricao &&
        e1?.titulo == e2?.titulo &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.latitude == e2?.latitude &&
        e1?.longitude == e2?.longitude;
  }

  @override
  int hash(PlaceRecord? e) => const ListEquality()
      .hash([e?.descricao, e?.titulo, e?.imageUrl, e?.latitude, e?.longitude]);

  @override
  bool isValidKey(Object? o) => o is PlaceRecord;
}
