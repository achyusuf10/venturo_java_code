// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu_variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuVariant _$MenuVariantFromJson(Map<String, dynamic> json) {
  return _MenuVariant.fromJson(json);
}

/// @nodoc
mixin _$MenuVariant {
  @JsonKey(name: 'id_detail')
  int get idDetail => throw _privateConstructorUsedError;
  String get keterangan => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get harga => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuVariantCopyWith<MenuVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuVariantCopyWith<$Res> {
  factory $MenuVariantCopyWith(
          MenuVariant value, $Res Function(MenuVariant) then) =
      _$MenuVariantCopyWithImpl<$Res, MenuVariant>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_detail') int idDetail,
      String keterangan,
      String type,
      int harga});
}

/// @nodoc
class _$MenuVariantCopyWithImpl<$Res, $Val extends MenuVariant>
    implements $MenuVariantCopyWith<$Res> {
  _$MenuVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDetail = null,
    Object? keterangan = null,
    Object? type = null,
    Object? harga = null,
  }) {
    return _then(_value.copyWith(
      idDetail: null == idDetail
          ? _value.idDetail
          : idDetail // ignore: cast_nullable_to_non_nullable
              as int,
      keterangan: null == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      harga: null == harga
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuVariantCopyWith<$Res>
    implements $MenuVariantCopyWith<$Res> {
  factory _$$_MenuVariantCopyWith(
          _$_MenuVariant value, $Res Function(_$_MenuVariant) then) =
      __$$_MenuVariantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_detail') int idDetail,
      String keterangan,
      String type,
      int harga});
}

/// @nodoc
class __$$_MenuVariantCopyWithImpl<$Res>
    extends _$MenuVariantCopyWithImpl<$Res, _$_MenuVariant>
    implements _$$_MenuVariantCopyWith<$Res> {
  __$$_MenuVariantCopyWithImpl(
      _$_MenuVariant _value, $Res Function(_$_MenuVariant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDetail = null,
    Object? keterangan = null,
    Object? type = null,
    Object? harga = null,
  }) {
    return _then(_$_MenuVariant(
      idDetail: null == idDetail
          ? _value.idDetail
          : idDetail // ignore: cast_nullable_to_non_nullable
              as int,
      keterangan: null == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      harga: null == harga
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuVariant implements _MenuVariant {
  _$_MenuVariant(
      {@JsonKey(name: 'id_detail') this.idDetail = 0,
      this.keterangan = '',
      this.type = '',
      this.harga = 0});

  factory _$_MenuVariant.fromJson(Map<String, dynamic> json) =>
      _$$_MenuVariantFromJson(json);

  @override
  @JsonKey(name: 'id_detail')
  final int idDetail;
  @override
  @JsonKey()
  final String keterangan;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final int harga;

  @override
  String toString() {
    return 'MenuVariant(idDetail: $idDetail, keterangan: $keterangan, type: $type, harga: $harga)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuVariant &&
            (identical(other.idDetail, idDetail) ||
                other.idDetail == idDetail) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.harga, harga) || other.harga == harga));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idDetail, keterangan, type, harga);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuVariantCopyWith<_$_MenuVariant> get copyWith =>
      __$$_MenuVariantCopyWithImpl<_$_MenuVariant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuVariantToJson(
      this,
    );
  }
}

abstract class _MenuVariant implements MenuVariant {
  factory _MenuVariant(
      {@JsonKey(name: 'id_detail') final int idDetail,
      final String keterangan,
      final String type,
      final int harga}) = _$_MenuVariant;

  factory _MenuVariant.fromJson(Map<String, dynamic> json) =
      _$_MenuVariant.fromJson;

  @override
  @JsonKey(name: 'id_detail')
  int get idDetail;
  @override
  String get keterangan;
  @override
  String get type;
  @override
  int get harga;
  @override
  @JsonKey(ignore: true)
  _$$_MenuVariantCopyWith<_$_MenuVariant> get copyWith =>
      throw _privateConstructorUsedError;
}
