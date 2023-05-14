// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'DireccionUsuarios',
      serializers.serialize(object.direccionUsuarios,
          specifiedType: const FullType(AddressStruct)),
    ];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reciclador;
    if (value != null) {
      result
        ..add('Reciclador')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.terminosYcondiciones;
    if (value != null) {
      result
        ..add('TerminosYcondiciones')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ciudad;
    if (value != null) {
      result
        ..add('ciudad')
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
    value = object.barrio;
    if (value != null) {
      result
        ..add('barrio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.detalleBarrio;
    if (value != null) {
      result
        ..add('detalleBarrio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apellido;
    if (value != null) {
      result
        ..add('apellido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cuentaContrato;
    if (value != null) {
      result
        ..add('cuentaContrato')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagenCuentaContrato;
    if (value != null) {
      result
        ..add('imagenCuentaContrato')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.direccion;
    if (value != null) {
      result
        ..add('Direccion')
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Reciclador':
          result.reciclador = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'TerminosYcondiciones':
          result.terminosYcondiciones = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'ciudad':
          result.ciudad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'localidad':
          result.localidad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'barrio':
          result.barrio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'detalleBarrio':
          result.detalleBarrio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'apellido':
          result.apellido = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cuentaContrato':
          result.cuentaContrato = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagenCuentaContrato':
          result.imagenCuentaContrato = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DireccionUsuarios':
          result.direccionUsuarios.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressStruct))! as AddressStruct);
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final bool? reciclador;
  @override
  final bool? terminosYcondiciones;
  @override
  final String? ciudad;
  @override
  final String? localidad;
  @override
  final String? barrio;
  @override
  final String? detalleBarrio;
  @override
  final String? nombre;
  @override
  final String? apellido;
  @override
  final String? displayName;
  @override
  final int? cuentaContrato;
  @override
  final String? photoUrl;
  @override
  final String? imagenCuentaContrato;
  @override
  final String? direccion;
  @override
  final AddressStruct direccionUsuarios;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.uid,
      this.createdTime,
      this.phoneNumber,
      this.email,
      this.reciclador,
      this.terminosYcondiciones,
      this.ciudad,
      this.localidad,
      this.barrio,
      this.detalleBarrio,
      this.nombre,
      this.apellido,
      this.displayName,
      this.cuentaContrato,
      this.photoUrl,
      this.imagenCuentaContrato,
      this.direccion,
      required this.direccionUsuarios,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        direccionUsuarios, r'UsersRecord', 'direccionUsuarios');
  }

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        reciclador == other.reciclador &&
        terminosYcondiciones == other.terminosYcondiciones &&
        ciudad == other.ciudad &&
        localidad == other.localidad &&
        barrio == other.barrio &&
        detalleBarrio == other.detalleBarrio &&
        nombre == other.nombre &&
        apellido == other.apellido &&
        displayName == other.displayName &&
        cuentaContrato == other.cuentaContrato &&
        photoUrl == other.photoUrl &&
        imagenCuentaContrato == other.imagenCuentaContrato &&
        direccion == other.direccion &&
        direccionUsuarios == other.direccionUsuarios &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, reciclador.hashCode);
    _$hash = $jc(_$hash, terminosYcondiciones.hashCode);
    _$hash = $jc(_$hash, ciudad.hashCode);
    _$hash = $jc(_$hash, localidad.hashCode);
    _$hash = $jc(_$hash, barrio.hashCode);
    _$hash = $jc(_$hash, detalleBarrio.hashCode);
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, apellido.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, cuentaContrato.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, imagenCuentaContrato.hashCode);
    _$hash = $jc(_$hash, direccion.hashCode);
    _$hash = $jc(_$hash, direccionUsuarios.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('reciclador', reciclador)
          ..add('terminosYcondiciones', terminosYcondiciones)
          ..add('ciudad', ciudad)
          ..add('localidad', localidad)
          ..add('barrio', barrio)
          ..add('detalleBarrio', detalleBarrio)
          ..add('nombre', nombre)
          ..add('apellido', apellido)
          ..add('displayName', displayName)
          ..add('cuentaContrato', cuentaContrato)
          ..add('photoUrl', photoUrl)
          ..add('imagenCuentaContrato', imagenCuentaContrato)
          ..add('direccion', direccion)
          ..add('direccionUsuarios', direccionUsuarios)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _reciclador;
  bool? get reciclador => _$this._reciclador;
  set reciclador(bool? reciclador) => _$this._reciclador = reciclador;

  bool? _terminosYcondiciones;
  bool? get terminosYcondiciones => _$this._terminosYcondiciones;
  set terminosYcondiciones(bool? terminosYcondiciones) =>
      _$this._terminosYcondiciones = terminosYcondiciones;

  String? _ciudad;
  String? get ciudad => _$this._ciudad;
  set ciudad(String? ciudad) => _$this._ciudad = ciudad;

  String? _localidad;
  String? get localidad => _$this._localidad;
  set localidad(String? localidad) => _$this._localidad = localidad;

  String? _barrio;
  String? get barrio => _$this._barrio;
  set barrio(String? barrio) => _$this._barrio = barrio;

  String? _detalleBarrio;
  String? get detalleBarrio => _$this._detalleBarrio;
  set detalleBarrio(String? detalleBarrio) =>
      _$this._detalleBarrio = detalleBarrio;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _apellido;
  String? get apellido => _$this._apellido;
  set apellido(String? apellido) => _$this._apellido = apellido;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  int? _cuentaContrato;
  int? get cuentaContrato => _$this._cuentaContrato;
  set cuentaContrato(int? cuentaContrato) =>
      _$this._cuentaContrato = cuentaContrato;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _imagenCuentaContrato;
  String? get imagenCuentaContrato => _$this._imagenCuentaContrato;
  set imagenCuentaContrato(String? imagenCuentaContrato) =>
      _$this._imagenCuentaContrato = imagenCuentaContrato;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  AddressStructBuilder? _direccionUsuarios;
  AddressStructBuilder get direccionUsuarios =>
      _$this._direccionUsuarios ??= new AddressStructBuilder();
  set direccionUsuarios(AddressStructBuilder? direccionUsuarios) =>
      _$this._direccionUsuarios = direccionUsuarios;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _reciclador = $v.reciclador;
      _terminosYcondiciones = $v.terminosYcondiciones;
      _ciudad = $v.ciudad;
      _localidad = $v.localidad;
      _barrio = $v.barrio;
      _detalleBarrio = $v.detalleBarrio;
      _nombre = $v.nombre;
      _apellido = $v.apellido;
      _displayName = $v.displayName;
      _cuentaContrato = $v.cuentaContrato;
      _photoUrl = $v.photoUrl;
      _imagenCuentaContrato = $v.imagenCuentaContrato;
      _direccion = $v.direccion;
      _direccionUsuarios = $v.direccionUsuarios.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              email: email,
              reciclador: reciclador,
              terminosYcondiciones: terminosYcondiciones,
              ciudad: ciudad,
              localidad: localidad,
              barrio: barrio,
              detalleBarrio: detalleBarrio,
              nombre: nombre,
              apellido: apellido,
              displayName: displayName,
              cuentaContrato: cuentaContrato,
              photoUrl: photoUrl,
              imagenCuentaContrato: imagenCuentaContrato,
              direccion: direccion,
              direccionUsuarios: direccionUsuarios.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'direccionUsuarios';
        direccionUsuarios.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
