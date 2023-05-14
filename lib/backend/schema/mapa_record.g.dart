// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapa_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MapaRecord> _$mapaRecordSerializer = new _$MapaRecordSerializer();

class _$MapaRecordSerializer implements StructuredSerializer<MapaRecord> {
  @override
  final Iterable<Type> types = const [MapaRecord, _$MapaRecord];
  @override
  final String wireName = 'MapaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MapaRecord object,
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
    value = object.coordenadas;
    if (value != null) {
      result
        ..add('coordenadas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.direccion;
    if (value != null) {
      result
        ..add('direccion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('imagen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.localidad;
    if (value != null) {
      result
        ..add('localidad')
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
  MapaRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MapaRecordBuilder();

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
        case 'coordenadas':
          result.coordenadas = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'localidad':
          result.localidad = serializers.deserialize(value,
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

class _$MapaRecord extends MapaRecord {
  @override
  final String? nombre;
  @override
  final LatLng? coordenadas;
  @override
  final String? direccion;
  @override
  final String? imagen;
  @override
  final String? localidad;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MapaRecord([void Function(MapaRecordBuilder)? updates]) =>
      (new MapaRecordBuilder()..update(updates))._build();

  _$MapaRecord._(
      {this.nombre,
      this.coordenadas,
      this.direccion,
      this.imagen,
      this.localidad,
      this.ffRef})
      : super._();

  @override
  MapaRecord rebuild(void Function(MapaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapaRecordBuilder toBuilder() => new MapaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapaRecord &&
        nombre == other.nombre &&
        coordenadas == other.coordenadas &&
        direccion == other.direccion &&
        imagen == other.imagen &&
        localidad == other.localidad &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, coordenadas.hashCode);
    _$hash = $jc(_$hash, direccion.hashCode);
    _$hash = $jc(_$hash, imagen.hashCode);
    _$hash = $jc(_$hash, localidad.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapaRecord')
          ..add('nombre', nombre)
          ..add('coordenadas', coordenadas)
          ..add('direccion', direccion)
          ..add('imagen', imagen)
          ..add('localidad', localidad)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MapaRecordBuilder implements Builder<MapaRecord, MapaRecordBuilder> {
  _$MapaRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  LatLng? _coordenadas;
  LatLng? get coordenadas => _$this._coordenadas;
  set coordenadas(LatLng? coordenadas) => _$this._coordenadas = coordenadas;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  String? _localidad;
  String? get localidad => _$this._localidad;
  set localidad(String? localidad) => _$this._localidad = localidad;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MapaRecordBuilder() {
    MapaRecord._initializeBuilder(this);
  }

  MapaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _coordenadas = $v.coordenadas;
      _direccion = $v.direccion;
      _imagen = $v.imagen;
      _localidad = $v.localidad;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MapaRecord;
  }

  @override
  void update(void Function(MapaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapaRecord build() => _build();

  _$MapaRecord _build() {
    final _$result = _$v ??
        new _$MapaRecord._(
            nombre: nombre,
            coordenadas: coordenadas,
            direccion: direccion,
            imagen: imagen,
            localidad: localidad,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
