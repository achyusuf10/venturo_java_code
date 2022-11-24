// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id_user => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(fromJson: tglFromJson, toJson: tglToJson)
  DateTime? get tgl_lahir => throw _privateConstructorUsedError;
  String? get alamat => throw _privateConstructorUsedError;
  String? get telepon => throw _privateConstructorUsedError;
  String? get ktp => throw _privateConstructorUsedError;
  String get pin => throw _privateConstructorUsedError;
  String? get foto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id_user,
      String email,
      String nama,
      @JsonKey(fromJson: tglFromJson, toJson: tglToJson) DateTime? tgl_lahir,
      String? alamat,
      String? telepon,
      String? ktp,
      String pin,
      String? foto});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_user = null,
    Object? email = null,
    Object? nama = null,
    Object? tgl_lahir = freezed,
    Object? alamat = freezed,
    Object? telepon = freezed,
    Object? ktp = freezed,
    Object? pin = null,
    Object? foto = freezed,
  }) {
    return _then(_value.copyWith(
      id_user: null == id_user
          ? _value.id_user
          : id_user // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      tgl_lahir: freezed == tgl_lahir
          ? _value.tgl_lahir
          : tgl_lahir // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      telepon: freezed == telepon
          ? _value.telepon
          : telepon // ignore: cast_nullable_to_non_nullable
              as String?,
      ktp: freezed == ktp
          ? _value.ktp
          : ktp // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id_user,
      String email,
      String nama,
      @JsonKey(fromJson: tglFromJson, toJson: tglToJson) DateTime? tgl_lahir,
      String? alamat,
      String? telepon,
      String? ktp,
      String pin,
      String? foto});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_user = null,
    Object? email = null,
    Object? nama = null,
    Object? tgl_lahir = freezed,
    Object? alamat = freezed,
    Object? telepon = freezed,
    Object? ktp = freezed,
    Object? pin = null,
    Object? foto = freezed,
  }) {
    return _then(_$_User(
      id_user: null == id_user
          ? _value.id_user
          : id_user // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      tgl_lahir: freezed == tgl_lahir
          ? _value.tgl_lahir
          : tgl_lahir // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      telepon: freezed == telepon
          ? _value.telepon
          : telepon // ignore: cast_nullable_to_non_nullable
              as String?,
      ktp: freezed == ktp
          ? _value.ktp
          : ktp // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {required this.id_user,
      required this.email,
      required this.nama,
      @JsonKey(fromJson: tglFromJson, toJson: tglToJson) this.tgl_lahir,
      required this.alamat,
      required this.telepon,
      required this.ktp,
      required this.pin,
      required this.foto});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id_user;
  @override
  final String email;
  @override
  final String nama;
  @override
  @JsonKey(fromJson: tglFromJson, toJson: tglToJson)
  final DateTime? tgl_lahir;
  @override
  final String? alamat;
  @override
  final String? telepon;
  @override
  final String? ktp;
  @override
  final String pin;
  @override
  final String? foto;

  @override
  String toString() {
    return 'User(id_user: $id_user, email: $email, nama: $nama, tgl_lahir: $tgl_lahir, alamat: $alamat, telepon: $telepon, ktp: $ktp, pin: $pin, foto: $foto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id_user, id_user) || other.id_user == id_user) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.tgl_lahir, tgl_lahir) ||
                other.tgl_lahir == tgl_lahir) &&
            (identical(other.alamat, alamat) || other.alamat == alamat) &&
            (identical(other.telepon, telepon) || other.telepon == telepon) &&
            (identical(other.ktp, ktp) || other.ktp == ktp) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.foto, foto) || other.foto == foto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id_user, email, nama, tgl_lahir,
      alamat, telepon, ktp, pin, foto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {required final int id_user,
      required final String email,
      required final String nama,
      @JsonKey(fromJson: tglFromJson, toJson: tglToJson)
          final DateTime? tgl_lahir,
      required final String? alamat,
      required final String? telepon,
      required final String? ktp,
      required final String pin,
      required final String? foto}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id_user;
  @override
  String get email;
  @override
  String get nama;
  @override
  @JsonKey(fromJson: tglFromJson, toJson: tglToJson)
  DateTime? get tgl_lahir;
  @override
  String? get alamat;
  @override
  String? get telepon;
  @override
  String? get ktp;
  @override
  String get pin;
  @override
  String? get foto;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
