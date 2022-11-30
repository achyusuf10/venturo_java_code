// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Discount _$DiscountFromJson(Map<String, dynamic> json) {
  return _Discount.fromJson(json);
}

/// @nodoc
mixin _$Discount {
  @JsonKey(name: 'id_diskon')
  int get idDiskon => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_user')
  int get idUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_user')
  String get namaUser => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  int get nominal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountCopyWith<Discount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCopyWith<$Res> {
  factory $DiscountCopyWith(Discount value, $Res Function(Discount) then) =
      _$DiscountCopyWithImpl<$Res, Discount>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_diskon') int idDiskon,
      @JsonKey(name: 'id_user') int idUser,
      @JsonKey(name: 'nama_user') String namaUser,
      String nama,
      int nominal});
}

/// @nodoc
class _$DiscountCopyWithImpl<$Res, $Val extends Discount>
    implements $DiscountCopyWith<$Res> {
  _$DiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDiskon = null,
    Object? idUser = null,
    Object? namaUser = null,
    Object? nama = null,
    Object? nominal = null,
  }) {
    return _then(_value.copyWith(
      idDiskon: null == idDiskon
          ? _value.idDiskon
          : idDiskon // ignore: cast_nullable_to_non_nullable
              as int,
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      namaUser: null == namaUser
          ? _value.namaUser
          : namaUser // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiscountCopyWith<$Res> implements $DiscountCopyWith<$Res> {
  factory _$$_DiscountCopyWith(
          _$_Discount value, $Res Function(_$_Discount) then) =
      __$$_DiscountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_diskon') int idDiskon,
      @JsonKey(name: 'id_user') int idUser,
      @JsonKey(name: 'nama_user') String namaUser,
      String nama,
      int nominal});
}

/// @nodoc
class __$$_DiscountCopyWithImpl<$Res>
    extends _$DiscountCopyWithImpl<$Res, _$_Discount>
    implements _$$_DiscountCopyWith<$Res> {
  __$$_DiscountCopyWithImpl(
      _$_Discount _value, $Res Function(_$_Discount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDiskon = null,
    Object? idUser = null,
    Object? namaUser = null,
    Object? nama = null,
    Object? nominal = null,
  }) {
    return _then(_$_Discount(
      idDiskon: null == idDiskon
          ? _value.idDiskon
          : idDiskon // ignore: cast_nullable_to_non_nullable
              as int,
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      namaUser: null == namaUser
          ? _value.namaUser
          : namaUser // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Discount implements _Discount {
  _$_Discount(
      {@JsonKey(name: 'id_diskon') this.idDiskon = 0,
      @JsonKey(name: 'id_user') this.idUser = 0,
      @JsonKey(name: 'nama_user') this.namaUser = '',
      this.nama = '',
      this.nominal = 0});

  factory _$_Discount.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountFromJson(json);

  @override
  @JsonKey(name: 'id_diskon')
  final int idDiskon;
  @override
  @JsonKey(name: 'id_user')
  final int idUser;
  @override
  @JsonKey(name: 'nama_user')
  final String namaUser;
  @override
  @JsonKey()
  final String nama;
  @override
  @JsonKey()
  final int nominal;

  @override
  String toString() {
    return 'Discount(idDiskon: $idDiskon, idUser: $idUser, namaUser: $namaUser, nama: $nama, nominal: $nominal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Discount &&
            (identical(other.idDiskon, idDiskon) ||
                other.idDiskon == idDiskon) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.namaUser, namaUser) ||
                other.namaUser == namaUser) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.nominal, nominal) || other.nominal == nominal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idDiskon, idUser, namaUser, nama, nominal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscountCopyWith<_$_Discount> get copyWith =>
      __$$_DiscountCopyWithImpl<_$_Discount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountToJson(
      this,
    );
  }
}

abstract class _Discount implements Discount {
  factory _Discount(
      {@JsonKey(name: 'id_diskon') final int idDiskon,
      @JsonKey(name: 'id_user') final int idUser,
      @JsonKey(name: 'nama_user') final String namaUser,
      final String nama,
      final int nominal}) = _$_Discount;

  factory _Discount.fromJson(Map<String, dynamic> json) = _$_Discount.fromJson;

  @override
  @JsonKey(name: 'id_diskon')
  int get idDiskon;
  @override
  @JsonKey(name: 'id_user')
  int get idUser;
  @override
  @JsonKey(name: 'nama_user')
  String get namaUser;
  @override
  String get nama;
  @override
  int get nominal;
  @override
  @JsonKey(ignore: true)
  _$$_DiscountCopyWith<_$_Discount> get copyWith =>
      throw _privateConstructorUsedError;
}
