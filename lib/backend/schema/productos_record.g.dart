// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductosRecord> _$productosRecordSerializer =
    new _$ProductosRecordSerializer();

class _$ProductosRecordSerializer
    implements StructuredSerializer<ProductosRecord> {
  @override
  final Iterable<Type> types = const [ProductosRecord, _$ProductosRecord];
  @override
  final String wireName = 'ProductosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imgProducto;
    if (value != null) {
      result
        ..add('imgProducto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.precioOriginal;
    if (value != null) {
      result
        ..add('precioOriginal')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.descuento;
    if (value != null) {
      result
        ..add('descuento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precioNeto;
    if (value != null) {
      result
        ..add('precioNeto')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listaCategoria;
    if (value != null) {
      result
        ..add('listaCategoria')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.tiendaId;
    if (value != null) {
      result
        ..add('tiendaId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ProductosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imgProducto':
          result.imgProducto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'precioOriginal':
          result.precioOriginal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'descuento':
          result.descuento = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'precioNeto':
          result.precioNeto = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listaCategoria':
          result.listaCategoria.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'tiendaId':
          result.tiendaId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductosRecord extends ProductosRecord {
  @override
  final String? nombre;
  @override
  final String? imgProducto;
  @override
  final int? precioOriginal;
  @override
  final double? descuento;
  @override
  final int? precioNeto;
  @override
  final String? descripcion;
  @override
  final BuiltList<String>? listaCategoria;
  @override
  final DocumentReference<Object?>? tiendaId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductosRecord([void Function(ProductosRecordBuilder)? updates]) =>
      (new ProductosRecordBuilder()..update(updates))._build();

  _$ProductosRecord._(
      {this.nombre,
      this.imgProducto,
      this.precioOriginal,
      this.descuento,
      this.precioNeto,
      this.descripcion,
      this.listaCategoria,
      this.tiendaId,
      this.ffRef})
      : super._();

  @override
  ProductosRecord rebuild(void Function(ProductosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductosRecordBuilder toBuilder() =>
      new ProductosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductosRecord &&
        nombre == other.nombre &&
        imgProducto == other.imgProducto &&
        precioOriginal == other.precioOriginal &&
        descuento == other.descuento &&
        precioNeto == other.precioNeto &&
        descripcion == other.descripcion &&
        listaCategoria == other.listaCategoria &&
        tiendaId == other.tiendaId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, imgProducto.hashCode);
    _$hash = $jc(_$hash, precioOriginal.hashCode);
    _$hash = $jc(_$hash, descuento.hashCode);
    _$hash = $jc(_$hash, precioNeto.hashCode);
    _$hash = $jc(_$hash, descripcion.hashCode);
    _$hash = $jc(_$hash, listaCategoria.hashCode);
    _$hash = $jc(_$hash, tiendaId.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductosRecord')
          ..add('nombre', nombre)
          ..add('imgProducto', imgProducto)
          ..add('precioOriginal', precioOriginal)
          ..add('descuento', descuento)
          ..add('precioNeto', precioNeto)
          ..add('descripcion', descripcion)
          ..add('listaCategoria', listaCategoria)
          ..add('tiendaId', tiendaId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductosRecordBuilder
    implements Builder<ProductosRecord, ProductosRecordBuilder> {
  _$ProductosRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _imgProducto;
  String? get imgProducto => _$this._imgProducto;
  set imgProducto(String? imgProducto) => _$this._imgProducto = imgProducto;

  int? _precioOriginal;
  int? get precioOriginal => _$this._precioOriginal;
  set precioOriginal(int? precioOriginal) =>
      _$this._precioOriginal = precioOriginal;

  double? _descuento;
  double? get descuento => _$this._descuento;
  set descuento(double? descuento) => _$this._descuento = descuento;

  int? _precioNeto;
  int? get precioNeto => _$this._precioNeto;
  set precioNeto(int? precioNeto) => _$this._precioNeto = precioNeto;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  ListBuilder<String>? _listaCategoria;
  ListBuilder<String> get listaCategoria =>
      _$this._listaCategoria ??= new ListBuilder<String>();
  set listaCategoria(ListBuilder<String>? listaCategoria) =>
      _$this._listaCategoria = listaCategoria;

  DocumentReference<Object?>? _tiendaId;
  DocumentReference<Object?>? get tiendaId => _$this._tiendaId;
  set tiendaId(DocumentReference<Object?>? tiendaId) =>
      _$this._tiendaId = tiendaId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductosRecordBuilder() {
    ProductosRecord._initializeBuilder(this);
  }

  ProductosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _imgProducto = $v.imgProducto;
      _precioOriginal = $v.precioOriginal;
      _descuento = $v.descuento;
      _precioNeto = $v.precioNeto;
      _descripcion = $v.descripcion;
      _listaCategoria = $v.listaCategoria?.toBuilder();
      _tiendaId = $v.tiendaId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductosRecord;
  }

  @override
  void update(void Function(ProductosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductosRecord build() => _build();

  _$ProductosRecord _build() {
    _$ProductosRecord _$result;
    try {
      _$result = _$v ??
          new _$ProductosRecord._(
              nombre: nombre,
              imgProducto: imgProducto,
              precioOriginal: precioOriginal,
              descuento: descuento,
              precioNeto: precioNeto,
              descripcion: descripcion,
              listaCategoria: _listaCategoria?.build(),
              tiendaId: tiendaId,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listaCategoria';
        _listaCategoria?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProductosRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
