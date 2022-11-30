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
  @HiveField(0)
  @JsonKey(name: 'id_user')
  int get idUser => throw _privateConstructorUsedError;
  @HiveField(1)
  String get email => throw _privateConstructorUsedError;
  @HiveField(2)
  String get nama => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(
      fromJson: SettingJson.tglFromJson,
      toJson: SettingJson.tglToJson,
      name: 'tgl_lahir')
  DateTime? get tglLahir => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get alamat => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get telepon => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get ktp => throw _privateConstructorUsedError;
  @HiveField(7)
  String get pin => throw _privateConstructorUsedError;
  @HiveField(8)
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
      {@HiveField(0)
      @JsonKey(name: 'id_user')
          int idUser,
      @HiveField(1)
          String email,
      @HiveField(2)
          String nama,
      @HiveField(3)
      @JsonKey(fromJson: SettingJson.tglFromJson, toJson: SettingJson.tglToJson, name: 'tgl_lahir')
          DateTime? tglLahir,
      @HiveField(4)
          String? alamat,
      @HiveField(5)
          String? telepon,
      @HiveField(6)
          String? ktp,
      @HiveField(7)
          String pin,
      @HiveField(8)
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
    Object? idUser = null,
    Object? email = null,
    Object? nama = null,
    Object? tglLahir = freezed,
    Object? alamat = freezed,
    Object? telepon = freezed,
    Object? ktp = freezed,
    Object? pin = null,
    Object? foto = freezed,
  }) {
    return _then(_value.copyWith(
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      tglLahir: freezed == tglLahir
          ? _value.tglLahir
          : tglLahir // ignore: cast_nullable_to_non_nullable
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
      {@HiveField(0)
      @JsonKey(name: 'id_user')
          int idUser,
      @HiveField(1)
          String email,
      @HiveField(2)
          String nama,
      @HiveField(3)
      @JsonKey(fromJson: SettingJson.tglFromJson, toJson: SettingJson.tglToJson, name: 'tgl_lahir')
          DateTime? tglLahir,
      @HiveField(4)
          String? alamat,
      @HiveField(5)
          String? telepon,
      @HiveField(6)
          String? ktp,
      @HiveField(7)
          String pin,
      @HiveField(8)
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
    Object? idUser = null,
    Object? email = null,
    Object? nama = null,
    Object? tglLahir = freezed,
    Object? alamat = freezed,
    Object? telepon = freezed,
    Object? ktp = freezed,
    Object? pin = null,
    Object? foto = freezed,
  }) {
    return _then(_$_User(
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      tglLahir: freezed == tglLahir
          ? _value.tglLahir
          : tglLahir // ignore: cast_nullable_to_non_nullable
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
@HiveType(typeId: 1, adapterName: 'UserAdapter')
class _$_User extends _User {
  _$_User(
      {@HiveField(0)
      @JsonKey(name: 'id_user')
          this.idUser = 0,
      @HiveField(1)
          this.email = '',
      @HiveField(2)
          this.nama = '',
      @HiveField(3)
      @JsonKey(fromJson: SettingJson.tglFromJson, toJson: SettingJson.tglToJson, name: 'tgl_lahir')
          this.tglLahir,
      @HiveField(4)
          this.alamat,
      @HiveField(5)
          this.telepon,
      @HiveField(6)
          this.ktp,
      @HiveField(7)
          this.pin = '',
      @HiveField(8)
          this.foto})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'id_user')
  final int idUser;
  @override
  @JsonKey()
  @HiveField(1)
  final String email;
  @override
  @JsonKey()
  @HiveField(2)
  final String nama;
  @override
  @HiveField(3)
  @JsonKey(
      fromJson: SettingJson.tglFromJson,
      toJson: SettingJson.tglToJson,
      name: 'tgl_lahir')
  final DateTime? tglLahir;
  @override
  @HiveField(4)
  final String? alamat;
  @override
  @HiveField(5)
  final String? telepon;
  @override
  @HiveField(6)
  final String? ktp;
  @override
  @JsonKey()
  @HiveField(7)
  final String pin;
  @override
  @HiveField(8)
  final String? foto;

  @override
  String toString() {
    return 'User(idUser: $idUser, email: $email, nama: $nama, tglLahir: $tglLahir, alamat: $alamat, telepon: $telepon, ktp: $ktp, pin: $pin, foto: $foto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.tglLahir, tglLahir) ||
                other.tglLahir == tglLahir) &&
            (identical(other.alamat, alamat) || other.alamat == alamat) &&
            (identical(other.telepon, telepon) || other.telepon == telepon) &&
            (identical(other.ktp, ktp) || other.ktp == ktp) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.foto, foto) || other.foto == foto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idUser, email, nama, tglLahir,
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

abstract class _User extends User {
  factory _User(
      {@HiveField(0)
      @JsonKey(name: 'id_user')
          final int idUser,
      @HiveField(1)
          final String email,
      @HiveField(2)
          final String nama,
      @HiveField(3)
      @JsonKey(fromJson: SettingJson.tglFromJson, toJson: SettingJson.tglToJson, name: 'tgl_lahir')
          final DateTime? tglLahir,
      @HiveField(4)
          final String? alamat,
      @HiveField(5)
          final String? telepon,
      @HiveField(6)
          final String? ktp,
      @HiveField(7)
          final String pin,
      @HiveField(8)
          final String? foto}) = _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'id_user')
  int get idUser;
  @override
  @HiveField(1)
  String get email;
  @override
  @HiveField(2)
  String get nama;
  @override
  @HiveField(3)
  @JsonKey(
      fromJson: SettingJson.tglFromJson,
      toJson: SettingJson.tglToJson,
      name: 'tgl_lahir')
  DateTime? get tglLahir;
  @override
  @HiveField(4)
  String? get alamat;
  @override
  @HiveField(5)
  String? get telepon;
  @override
  @HiveField(6)
  String? get ktp;
  @override
  @HiveField(7)
  String get pin;
  @override
  @HiveField(8)
  String? get foto;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
