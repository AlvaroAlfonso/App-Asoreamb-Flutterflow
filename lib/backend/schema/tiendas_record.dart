import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tiendas_record.g.dart';

abstract class TiendasRecord
    implements Built<TiendasRecord, TiendasRecordBuilder> {
  static Serializer<TiendasRecord> get serializer => _$tiendasRecordSerializer;

  String? get nombre;

  String? get imagenTienda;

  String? get ciudad;

  String? get direccion;

  String? get barrio;

  int? get noCelular;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TiendasRecordBuilder builder) => builder
    ..nombre = ''
    ..imagenTienda = ''
    ..ciudad = ''
    ..direccion = ''
    ..barrio = ''
    ..noCelular = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tiendas');

  static Stream<TiendasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TiendasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TiendasRecord._();
  factory TiendasRecord([void Function(TiendasRecordBuilder) updates]) =
      _$TiendasRecord;

  static TiendasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTiendasRecordData({
  String? nombre,
  String? imagenTienda,
  String? ciudad,
  String? direccion,
  String? barrio,
  int? noCelular,
}) {
  final firestoreData = serializers.toFirestore(
    TiendasRecord.serializer,
    TiendasRecord(
      (t) => t
        ..nombre = nombre
        ..imagenTienda = imagenTienda
        ..ciudad = ciudad
        ..direccion = direccion
        ..barrio = barrio
        ..noCelular = noCelular,
    ),
  );

  return firestoreData;
}
