import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get email;

  @BuiltValueField(wireName: 'Reciclador')
  bool? get reciclador;

  @BuiltValueField(wireName: 'TerminosYcondiciones')
  bool? get terminosYcondiciones;

  String? get ciudad;

  String? get localidad;

  String? get barrio;

  String? get detalleBarrio;

  String? get nombre;

  String? get apellido;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  int? get cuentaContrato;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get imagenCuentaContrato;

  @BuiltValueField(wireName: 'Direccion')
  String? get direccion;

  @BuiltValueField(wireName: 'DireccionUsuarios')
  AddressStruct get direccionUsuarios;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..uid = ''
    ..phoneNumber = ''
    ..email = ''
    ..reciclador = false
    ..terminosYcondiciones = false
    ..ciudad = ''
    ..localidad = ''
    ..barrio = ''
    ..detalleBarrio = ''
    ..nombre = ''
    ..apellido = ''
    ..displayName = ''
    ..cuentaContrato = 0
    ..photoUrl = ''
    ..imagenCuentaContrato = ''
    ..direccion = ''
    ..direccionUsuarios = AddressStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? email,
  bool? reciclador,
  bool? terminosYcondiciones,
  String? ciudad,
  String? localidad,
  String? barrio,
  String? detalleBarrio,
  String? nombre,
  String? apellido,
  String? displayName,
  int? cuentaContrato,
  String? photoUrl,
  String? imagenCuentaContrato,
  String? direccion,
  AddressStruct? direccionUsuarios,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..email = email
        ..reciclador = reciclador
        ..terminosYcondiciones = terminosYcondiciones
        ..ciudad = ciudad
        ..localidad = localidad
        ..barrio = barrio
        ..detalleBarrio = detalleBarrio
        ..nombre = nombre
        ..apellido = apellido
        ..displayName = displayName
        ..cuentaContrato = cuentaContrato
        ..photoUrl = photoUrl
        ..imagenCuentaContrato = imagenCuentaContrato
        ..direccion = direccion
        ..direccionUsuarios = AddressStructBuilder(),
    ),
  );

  // Handle nested data for "DireccionUsuarios" field.
  addAddressStructData(firestoreData, direccionUsuarios, 'DireccionUsuarios');

  return firestoreData;
}
