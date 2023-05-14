// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiciosRecord> _$serviciosRecordSerializer =
    new _$ServiciosRecordSerializer();

class _$ServiciosRecordSerializer
    implements StructuredSerializer<ServiciosRecord> {
  @override
  final Iterable<Type> types = const [ServiciosRecord, _$ServiciosRecord];
  @override
  final String wireName = 'ServiciosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ServiciosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subtitulo;
    if (value != null) {
      result
        ..add('subtitulo')
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
    value = object.texto;
    if (value != null) {
      result
        ..add('texto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagenPortada;
    if (value != null) {
      result
        ..add('imagenPortada')
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
  ServiciosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiciosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subtitulo':
          result.subtitulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'texto':
          result.texto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagenPortada':
          result.imagenPortada = serializers.deserialize(value,
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

class _$ServiciosRecord extends ServiciosRecord {
  @override
  final String? titulo;
  @override
  final String? subtitulo;
  @override
  final String? imagen;
  @override
  final String? texto;
  @override
  final String? descripcion;
  @override
  final String? imagenPortada;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ServiciosRecord([void Function(ServiciosRecordBuilder)? updates]) =>
      (new ServiciosRecordBuilder()..update(updates))._build();

  _$ServiciosRecord._(
      {this.titulo,
      this.subtitulo,
      this.imagen,
      this.texto,
      this.descripcion,
      this.imagenPortada,
      this.ffRef})
      : super._();

  @override
  ServiciosRecord rebuild(void Function(ServiciosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiciosRecordBuilder toBuilder() =>
      new ServiciosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiciosRecord &&
        titulo == other.titulo &&
        subtitulo == other.subtitulo &&
        imagen == other.imagen &&
        texto == other.texto &&
        descripcion == other.descripcion &&
        imagenPortada == other.imagenPortada &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, titulo.hashCode);
    _$hash = $jc(_$hash, subtitulo.hashCode);
    _$hash = $jc(_$hash, imagen.hashCode);
    _$hash = $jc(_$hash, texto.hashCode);
    _$hash = $jc(_$hash, descripcion.hashCode);
    _$hash = $jc(_$hash, imagenPortada.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiciosRecord')
          ..add('titulo', titulo)
          ..add('subtitulo', subtitulo)
          ..add('imagen', imagen)
          ..add('texto', texto)
          ..add('descripcion', descripcion)
          ..add('imagenPortada', imagenPortada)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ServiciosRecordBuilder
    implements Builder<ServiciosRecord, ServiciosRecordBuilder> {
  _$ServiciosRecord? _$v;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  String? _subtitulo;
  String? get subtitulo => _$this._subtitulo;
  set subtitulo(String? subtitulo) => _$this._subtitulo = subtitulo;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  String? _texto;
  String? get texto => _$this._texto;
  set texto(String? texto) => _$this._texto = texto;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  String? _imagenPortada;
  String? get imagenPortada => _$this._imagenPortada;
  set imagenPortada(String? imagenPortada) =>
      _$this._imagenPortada = imagenPortada;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ServiciosRecordBuilder() {
    ServiciosRecord._initializeBuilder(this);
  }

  ServiciosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titulo = $v.titulo;
      _subtitulo = $v.subtitulo;
      _imagen = $v.imagen;
      _texto = $v.texto;
      _descripcion = $v.descripcion;
      _imagenPortada = $v.imagenPortada;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiciosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiciosRecord;
  }

  @override
  void update(void Function(ServiciosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiciosRecord build() => _build();

  _$ServiciosRecord _build() {
    final _$result = _$v ??
        new _$ServiciosRecord._(
            titulo: titulo,
            subtitulo: subtitulo,
            imagen: imagen,
            texto: texto,
            descripcion: descripcion,
            imagenPortada: imagenPortada,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
