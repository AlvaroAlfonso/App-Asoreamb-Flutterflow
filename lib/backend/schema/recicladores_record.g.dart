// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recicladores_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecicladoresRecord> _$recicladoresRecordSerializer =
    new _$RecicladoresRecordSerializer();

class _$RecicladoresRecordSerializer
    implements StructuredSerializer<RecicladoresRecord> {
  @override
  final Iterable<Type> types = const [RecicladoresRecord, _$RecicladoresRecord];
  @override
  final String wireName = 'RecicladoresRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RecicladoresRecord object,
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
    value = object.bodegaPertenece;
    if (value != null) {
      result
        ..add('bodega_pertenece')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.identificacion;
    if (value != null) {
      result
        ..add('Identificacion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.zonaTrabajo;
    if (value != null) {
      result
        ..add('Zona_trabajo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('Imagen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fechaNacimiento;
    if (value != null) {
      result
        ..add('Fecha_nacimiento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  RecicladoresRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecicladoresRecordBuilder();

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
        case 'bodega_pertenece':
          result.bodegaPertenece = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Identificacion':
          result.identificacion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Zona_trabajo':
          result.zonaTrabajo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Fecha_nacimiento':
          result.fechaNacimiento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$RecicladoresRecord extends RecicladoresRecord {
  @override
  final String? nombre;
  @override
  final String? bodegaPertenece;
  @override
  final int? identificacion;
  @override
  final String? zonaTrabajo;
  @override
  final String? imagen;
  @override
  final String? fechaNacimiento;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RecicladoresRecord(
          [void Function(RecicladoresRecordBuilder)? updates]) =>
      (new RecicladoresRecordBuilder()..update(updates))._build();

  _$RecicladoresRecord._(
      {this.nombre,
      this.bodegaPertenece,
      this.identificacion,
      this.zonaTrabajo,
      this.imagen,
      this.fechaNacimiento,
      this.ffRef})
      : super._();

  @override
  RecicladoresRecord rebuild(
          void Function(RecicladoresRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecicladoresRecordBuilder toBuilder() =>
      new RecicladoresRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecicladoresRecord &&
        nombre == other.nombre &&
        bodegaPertenece == other.bodegaPertenece &&
        identificacion == other.identificacion &&
        zonaTrabajo == other.zonaTrabajo &&
        imagen == other.imagen &&
        fechaNacimiento == other.fechaNacimiento &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, bodegaPertenece.hashCode);
    _$hash = $jc(_$hash, identificacion.hashCode);
    _$hash = $jc(_$hash, zonaTrabajo.hashCode);
    _$hash = $jc(_$hash, imagen.hashCode);
    _$hash = $jc(_$hash, fechaNacimiento.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecicladoresRecord')
          ..add('nombre', nombre)
          ..add('bodegaPertenece', bodegaPertenece)
          ..add('identificacion', identificacion)
          ..add('zonaTrabajo', zonaTrabajo)
          ..add('imagen', imagen)
          ..add('fechaNacimiento', fechaNacimiento)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RecicladoresRecordBuilder
    implements Builder<RecicladoresRecord, RecicladoresRecordBuilder> {
  _$RecicladoresRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _bodegaPertenece;
  String? get bodegaPertenece => _$this._bodegaPertenece;
  set bodegaPertenece(String? bodegaPertenece) =>
      _$this._bodegaPertenece = bodegaPertenece;

  int? _identificacion;
  int? get identificacion => _$this._identificacion;
  set identificacion(int? identificacion) =>
      _$this._identificacion = identificacion;

  String? _zonaTrabajo;
  String? get zonaTrabajo => _$this._zonaTrabajo;
  set zonaTrabajo(String? zonaTrabajo) => _$this._zonaTrabajo = zonaTrabajo;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  String? _fechaNacimiento;
  String? get fechaNacimiento => _$this._fechaNacimiento;
  set fechaNacimiento(String? fechaNacimiento) =>
      _$this._fechaNacimiento = fechaNacimiento;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RecicladoresRecordBuilder() {
    RecicladoresRecord._initializeBuilder(this);
  }

  RecicladoresRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _bodegaPertenece = $v.bodegaPertenece;
      _identificacion = $v.identificacion;
      _zonaTrabajo = $v.zonaTrabajo;
      _imagen = $v.imagen;
      _fechaNacimiento = $v.fechaNacimiento;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecicladoresRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecicladoresRecord;
  }

  @override
  void update(void Function(RecicladoresRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecicladoresRecord build() => _build();

  _$RecicladoresRecord _build() {
    final _$result = _$v ??
        new _$RecicladoresRecord._(
            nombre: nombre,
            bodegaPertenece: bodegaPertenece,
            identificacion: identificacion,
            zonaTrabajo: zonaTrabajo,
            imagen: imagen,
            fechaNacimiento: fechaNacimiento,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
