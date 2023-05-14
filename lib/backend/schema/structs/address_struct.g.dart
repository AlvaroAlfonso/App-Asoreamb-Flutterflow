// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddressStruct> _$addressStructSerializer =
    new _$AddressStructSerializer();

class _$AddressStructSerializer implements StructuredSerializer<AddressStruct> {
  @override
  final Iterable<Type> types = const [AddressStruct, _$AddressStruct];
  @override
  final String wireName = 'AddressStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddressStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.direccion;
    if (value != null) {
      result
        ..add('Direccion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ciudad;
    if (value != null) {
      result
        ..add('Ciudad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.localidad;
    if (value != null) {
      result
        ..add('Localidad')
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
    return result;
  }

  @override
  AddressStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Ciudad':
          result.ciudad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Localidad':
          result.localidad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coordenadas':
          result.coordenadas = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$AddressStruct extends AddressStruct {
  @override
  final String? direccion;
  @override
  final String? ciudad;
  @override
  final String? localidad;
  @override
  final LatLng? coordenadas;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$AddressStruct([void Function(AddressStructBuilder)? updates]) =>
      (new AddressStructBuilder()..update(updates))._build();

  _$AddressStruct._(
      {this.direccion,
      this.ciudad,
      this.localidad,
      this.coordenadas,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'AddressStruct', 'firestoreUtilData');
  }

  @override
  AddressStruct rebuild(void Function(AddressStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressStructBuilder toBuilder() => new AddressStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressStruct &&
        direccion == other.direccion &&
        ciudad == other.ciudad &&
        localidad == other.localidad &&
        coordenadas == other.coordenadas &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, direccion.hashCode);
    _$hash = $jc(_$hash, ciudad.hashCode);
    _$hash = $jc(_$hash, localidad.hashCode);
    _$hash = $jc(_$hash, coordenadas.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddressStruct')
          ..add('direccion', direccion)
          ..add('ciudad', ciudad)
          ..add('localidad', localidad)
          ..add('coordenadas', coordenadas)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class AddressStructBuilder
    implements Builder<AddressStruct, AddressStructBuilder> {
  _$AddressStruct? _$v;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  String? _ciudad;
  String? get ciudad => _$this._ciudad;
  set ciudad(String? ciudad) => _$this._ciudad = ciudad;

  String? _localidad;
  String? get localidad => _$this._localidad;
  set localidad(String? localidad) => _$this._localidad = localidad;

  LatLng? _coordenadas;
  LatLng? get coordenadas => _$this._coordenadas;
  set coordenadas(LatLng? coordenadas) => _$this._coordenadas = coordenadas;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  AddressStructBuilder() {
    AddressStruct._initializeBuilder(this);
  }

  AddressStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _direccion = $v.direccion;
      _ciudad = $v.ciudad;
      _localidad = $v.localidad;
      _coordenadas = $v.coordenadas;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddressStruct;
  }

  @override
  void update(void Function(AddressStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddressStruct build() => _build();

  _$AddressStruct _build() {
    final _$result = _$v ??
        new _$AddressStruct._(
            direccion: direccion,
            ciudad: ciudad,
            localidad: localidad,
            coordenadas: coordenadas,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'AddressStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
