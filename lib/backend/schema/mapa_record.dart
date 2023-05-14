import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mapa_record.g.dart';

abstract class MapaRecord implements Built<MapaRecord, MapaRecordBuilder> {
  static Serializer<MapaRecord> get serializer => _$mapaRecordSerializer;

  String? get nombre;

  LatLng? get coordenadas;

  String? get direccion;

  String? get imagen;

  String? get localidad;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MapaRecordBuilder builder) => builder
    ..nombre = ''
    ..direccion = ''
    ..imagen = ''
    ..localidad = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mapa');

  static Stream<MapaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MapaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MapaRecord._();
  factory MapaRecord([void Function(MapaRecordBuilder) updates]) = _$MapaRecord;

  static MapaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMapaRecordData({
  String? nombre,
  LatLng? coordenadas,
  String? direccion,
  String? imagen,
  String? localidad,
}) {
  final firestoreData = serializers.toFirestore(
    MapaRecord.serializer,
    MapaRecord(
      (m) => m
        ..nombre = nombre
        ..coordenadas = coordenadas
        ..direccion = direccion
        ..imagen = imagen
        ..localidad = localidad,
    ),
  );

  return firestoreData;
}
