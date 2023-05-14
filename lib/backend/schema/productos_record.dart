import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'productos_record.g.dart';

abstract class ProductosRecord
    implements Built<ProductosRecord, ProductosRecordBuilder> {
  static Serializer<ProductosRecord> get serializer =>
      _$productosRecordSerializer;

  String? get nombre;

  String? get imgProducto;

  int? get precioOriginal;

  double? get descuento;

  int? get precioNeto;

  String? get descripcion;

  BuiltList<String>? get listaCategoria;

  DocumentReference? get tiendaId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductosRecordBuilder builder) => builder
    ..nombre = ''
    ..imgProducto = ''
    ..precioOriginal = 0
    ..descuento = 0.0
    ..precioNeto = 0
    ..descripcion = ''
    ..listaCategoria = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductosRecord._();
  factory ProductosRecord([void Function(ProductosRecordBuilder) updates]) =
      _$ProductosRecord;

  static ProductosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductosRecordData({
  String? nombre,
  String? imgProducto,
  int? precioOriginal,
  double? descuento,
  int? precioNeto,
  String? descripcion,
  DocumentReference? tiendaId,
}) {
  final firestoreData = serializers.toFirestore(
    ProductosRecord.serializer,
    ProductosRecord(
      (p) => p
        ..nombre = nombre
        ..imgProducto = imgProducto
        ..precioOriginal = precioOriginal
        ..descuento = descuento
        ..precioNeto = precioNeto
        ..descripcion = descripcion
        ..listaCategoria = null
        ..tiendaId = tiendaId,
    ),
  );

  return firestoreData;
}
