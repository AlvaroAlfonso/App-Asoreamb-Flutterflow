import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'servicios_record.g.dart';

abstract class ServiciosRecord
    implements Built<ServiciosRecord, ServiciosRecordBuilder> {
  static Serializer<ServiciosRecord> get serializer =>
      _$serviciosRecordSerializer;

  String? get titulo;

  String? get subtitulo;

  String? get imagen;

  String? get texto;

  String? get descripcion;

  String? get imagenPortada;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ServiciosRecordBuilder builder) => builder
    ..titulo = ''
    ..subtitulo = ''
    ..imagen = ''
    ..texto = ''
    ..descripcion = ''
    ..imagenPortada = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Servicios');

  static Stream<ServiciosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ServiciosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ServiciosRecord._();
  factory ServiciosRecord([void Function(ServiciosRecordBuilder) updates]) =
      _$ServiciosRecord;

  static ServiciosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createServiciosRecordData({
  String? titulo,
  String? subtitulo,
  String? imagen,
  String? texto,
  String? descripcion,
  String? imagenPortada,
}) {
  final firestoreData = serializers.toFirestore(
    ServiciosRecord.serializer,
    ServiciosRecord(
      (s) => s
        ..titulo = titulo
        ..subtitulo = subtitulo
        ..imagen = imagen
        ..texto = texto
        ..descripcion = descripcion
        ..imagenPortada = imagenPortada,
    ),
  );

  return firestoreData;
}
