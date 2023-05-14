// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tiendas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TiendasRecord> _$tiendasRecordSerializer =
    new _$TiendasRecordSerializer();

class _$TiendasRecordSerializer implements StructuredSerializer<TiendasRecord> {
  @override
  final Iterable<Type> types = const [TiendasRecord, _$TiendasRecord];
  @override
  final String wireName = 'TiendasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TiendasRecord object,
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
    value = object.imagenTienda;
    if (value != null) {
      result
        ..add('imagenTienda')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ciudad;
    if (value != null) {
      result
        ..add('ciudad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.direccion;
    if (value != null) {
      result
        ..add('direccion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.barrio;
    if (value != null) {
      result
        ..add('barrio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.noCelular;
    if (value != null) {
      result
        ..add('noCelular')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  TiendasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TiendasRecordBuilder();

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
        case 'imagenTienda':
          result.imagenTienda = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ciudad':
          result.ciudad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'barrio':
          result.barrio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'noCelular':
          result.noCelular = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$TiendasRecord extends TiendasRecord {
  @override
  final String? nombre;
  @override
  final String? imagenTienda;
  @override
  final String? ciudad;
  @override
  final String? direccion;
  @override
  final String? barrio;
  @override
  final int? noCelular;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TiendasRecord([void Function(TiendasRecordBuilder)? updates]) =>
      (new TiendasRecordBuilder()..update(updates))._build();

  _$TiendasRecord._(
      {this.nombre,
      this.imagenTienda,
      this.ciudad,
      this.direccion,
      this.barrio,
      this.noCelular,
      this.ffRef})
      : super._();

  @override
  TiendasRecord rebuild(void Function(TiendasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TiendasRecordBuilder toBuilder() => new TiendasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TiendasRecord &&
        nombre == other.nombre &&
        imagenTienda == other.imagenTienda &&
        ciudad == other.ciudad &&
        direccion == other.direccion &&
        barrio == other.barrio &&
        noCelular == other.noCelular &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, imagenTienda.hashCode);
    _$hash = $jc(_$hash, ciudad.hashCode);
    _$hash = $jc(_$hash, direccion.hashCode);
    _$hash = $jc(_$hash, barrio.hashCode);
    _$hash = $jc(_$hash, noCelular.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TiendasRecord')
          ..add('nombre', nombre)
          ..add('imagenTienda', imagenTienda)
          ..add('ciudad', ciudad)
          ..add('direccion', direccion)
          ..add('barrio', barrio)
          ..add('noCelular', noCelular)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TiendasRecordBuilder
    implements Builder<TiendasRecord, TiendasRecordBuilder> {
  _$TiendasRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _imagenTienda;
  String? get imagenTienda => _$this._imagenTienda;
  set imagenTienda(String? imagenTienda) => _$this._imagenTienda = imagenTienda;

  String? _ciudad;
  String? get ciudad => _$this._ciudad;
  set ciudad(String? ciudad) => _$this._ciudad = ciudad;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  String? _barrio;
  String? get barrio => _$this._barrio;
  set barrio(String? barrio) => _$this._barrio = barrio;

  int? _noCelular;
  int? get noCelular => _$this._noCelular;
  set noCelular(int? noCelular) => _$this._noCelular = noCelular;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TiendasRecordBuilder() {
    TiendasRecord._initializeBuilder(this);
  }

  TiendasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _imagenTienda = $v.imagenTienda;
      _ciudad = $v.ciudad;
      _direccion = $v.direccion;
      _barrio = $v.barrio;
      _noCelular = $v.noCelular;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TiendasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TiendasRecord;
  }

  @override
  void update(void Function(TiendasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TiendasRecord build() => _build();

  _$TiendasRecord _build() {
    final _$result = _$v ??
        new _$TiendasRecord._(
            nombre: nombre,
            imagenTienda: imagenTienda,
            ciudad: ciudad,
            direccion: direccion,
            barrio: barrio,
            noCelular: noCelular,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
