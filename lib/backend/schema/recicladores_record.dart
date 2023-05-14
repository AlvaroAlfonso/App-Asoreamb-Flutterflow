import 'dart:async';

import 'package:from_css_color/from_css_color.dart';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'recicladores_record.g.dart';

abstract class RecicladoresRecord
    implements Built<RecicladoresRecord, RecicladoresRecordBuilder> {
  static Serializer<RecicladoresRecord> get serializer =>
      _$recicladoresRecordSerializer;

  String? get nombre;

  @BuiltValueField(wireName: 'bodega_pertenece')
  String? get bodegaPertenece;

  @BuiltValueField(wireName: 'Identificacion')
  int? get identificacion;

  @BuiltValueField(wireName: 'Zona_trabajo')
  String? get zonaTrabajo;

  @BuiltValueField(wireName: 'Imagen')
  String? get imagen;

  @BuiltValueField(wireName: 'Fecha_nacimiento')
  String? get fechaNacimiento;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RecicladoresRecordBuilder builder) => builder
    ..nombre = ''
    ..bodegaPertenece = ''
    ..identificacion = 0
    ..zonaTrabajo = ''
    ..imagen = ''
    ..fechaNacimiento = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Recicladores');

  static Stream<RecicladoresRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RecicladoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static RecicladoresRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      RecicladoresRecord(
        (c) => c
          ..nombre = snapshot.data['nombre']
          ..bodegaPertenece = snapshot.data['bodega_pertenece']
          ..identificacion = snapshot.data['Identificacion']?.round()
          ..zonaTrabajo = snapshot.data['Zona_trabajo']
          ..imagen = snapshot.data['Imagen']
          ..fechaNacimiento = snapshot.data['Fecha_nacimiento']
          ..ffRef = RecicladoresRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<RecicladoresRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'Recicladores',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  RecicladoresRecord._();
  factory RecicladoresRecord(
          [void Function(RecicladoresRecordBuilder) updates]) =
      _$RecicladoresRecord;

  static RecicladoresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRecicladoresRecordData({
  String? nombre,
  String? bodegaPertenece,
  int? identificacion,
  String? zonaTrabajo,
  String? imagen,
  String? fechaNacimiento,
}) {
  final firestoreData = serializers.toFirestore(
    RecicladoresRecord.serializer,
    RecicladoresRecord(
      (r) => r
        ..nombre = nombre
        ..bodegaPertenece = bodegaPertenece
        ..identificacion = identificacion
        ..zonaTrabajo = zonaTrabajo
        ..imagen = imagen
        ..fechaNacimiento = fechaNacimiento,
    ),
  );

  return firestoreData;
}
