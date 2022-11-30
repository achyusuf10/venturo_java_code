// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'voucher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Voucher _$VoucherFromJson(Map<String, dynamic> json) {
  return _Voucher.fromJson(json);
}

/// @nodoc
mixin _$Voucher {
  @JsonKey(name: 'id_voucher')
  int get idVoucher => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_user')
  int get idUser => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_user')
  String get namaUser => throw _privateConstructorUsedError;
  int get nominal => throw _privateConstructorUsedError;
  @JsonKey(name: 'info_voucher')
  String get infoVoucher => throw _privateConstructorUsedError;
  @JsonKey(name: 'periode_mulai')
  DateTime? get periodeMulai => throw _privateConstructorUsedError;
  @JsonKey(name: 'periode_selesai')
  DateTime? get periodeSelesai => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get catatan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoucherCopyWith<Voucher> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherCopyWith<$Res> {
  factory $VoucherCopyWith(Voucher value, $Res Function(Voucher) then) =
      _$VoucherCopyWithImpl<$Res, Voucher>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_voucher') int idVoucher,
      @JsonKey(name: 'id_user') int idUser,
      String nama,
      @JsonKey(name: 'nama_user') String namaUser,
      int nominal,
      @JsonKey(name: 'info_voucher') String infoVoucher,
      @JsonKey(name: 'periode_mulai') DateTime? periodeMulai,
      @JsonKey(name: 'periode_selesai') DateTime? periodeSelesai,
      int type,
      int status,
      String catatan});
}

/// @nodoc
class _$VoucherCopyWithImpl<$Res, $Val extends Voucher>
    implements $VoucherCopyWith<$Res> {
  _$VoucherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idVoucher = null,
    Object? idUser = null,
    Object? nama = null,
    Object? namaUser = null,
    Object? nominal = null,
    Object? infoVoucher = null,
    Object? periodeMulai = freezed,
    Object? periodeSelesai = freezed,
    Object? type = null,
    Object? status = null,
    Object? catatan = null,
  }) {
    return _then(_value.copyWith(
      idVoucher: null == idVoucher
          ? _value.idVoucher
          : idVoucher // ignore: cast_nullable_to_non_nullable
              as int,
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      namaUser: null == namaUser
          ? _value.namaUser
          : namaUser // ignore: cast_nullable_to_non_nullable
              as String,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
      infoVoucher: null == infoVoucher
          ? _value.infoVoucher
          : infoVoucher // ignore: cast_nullable_to_non_nullable
              as String,
      periodeMulai: freezed == periodeMulai
          ? _value.periodeMulai
          : periodeMulai // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      periodeSelesai: freezed == periodeSelesai
          ? _value.periodeSelesai
          : periodeSelesai // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      catatan: null == catatan
          ? _value.catatan
          : catatan // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VoucherCopyWith<$Res> implements $VoucherCopyWith<$Res> {
  factory _$$_VoucherCopyWith(
          _$_Voucher value, $Res Function(_$_Voucher) then) =
      __$$_VoucherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_voucher') int idVoucher,
      @JsonKey(name: 'id_user') int idUser,
      String nama,
      @JsonKey(name: 'nama_user') String namaUser,
      int nominal,
      @JsonKey(name: 'info_voucher') String infoVoucher,
      @JsonKey(name: 'periode_mulai') DateTime? periodeMulai,
      @JsonKey(name: 'periode_selesai') DateTime? periodeSelesai,
      int type,
      int status,
      String catatan});
}

/// @nodoc
class __$$_VoucherCopyWithImpl<$Res>
    extends _$VoucherCopyWithImpl<$Res, _$_Voucher>
    implements _$$_VoucherCopyWith<$Res> {
  __$$_VoucherCopyWithImpl(_$_Voucher _value, $Res Function(_$_Voucher) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idVoucher = null,
    Object? idUser = null,
    Object? nama = null,
    Object? namaUser = null,
    Object? nominal = null,
    Object? infoVoucher = null,
    Object? periodeMulai = freezed,
    Object? periodeSelesai = freezed,
    Object? type = null,
    Object? status = null,
    Object? catatan = null,
  }) {
    return _then(_$_Voucher(
      idVoucher: null == idVoucher
          ? _value.idVoucher
          : idVoucher // ignore: cast_nullable_to_non_nullable
              as int,
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      namaUser: null == namaUser
          ? _value.namaUser
          : namaUser // ignore: cast_nullable_to_non_nullable
              as String,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
      infoVoucher: null == infoVoucher
          ? _value.infoVoucher
          : infoVoucher // ignore: cast_nullable_to_non_nullable
              as String,
      periodeMulai: freezed == periodeMulai
          ? _value.periodeMulai
          : periodeMulai // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      periodeSelesai: freezed == periodeSelesai
          ? _value.periodeSelesai
          : periodeSelesai // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      catatan: null == catatan
          ? _value.catatan
          : catatan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Voucher implements _Voucher {
  _$_Voucher(
      {@JsonKey(name: 'id_voucher') this.idVoucher = 0,
      @JsonKey(name: 'id_user') this.idUser = 0,
      this.nama = '',
      @JsonKey(name: 'nama_user') this.namaUser = '',
      this.nominal = 0,
      @JsonKey(name: 'info_voucher') this.infoVoucher = '',
      @JsonKey(name: 'periode_mulai') this.periodeMulai,
      @JsonKey(name: 'periode_selesai') this.periodeSelesai,
      this.type = 0,
      this.status = 0,
      this.catatan = ''});

  factory _$_Voucher.fromJson(Map<String, dynamic> json) =>
      _$$_VoucherFromJson(json);

  @override
  @JsonKey(name: 'id_voucher')
  final int idVoucher;
  @override
  @JsonKey(name: 'id_user')
  final int idUser;
  @override
  @JsonKey()
  final String nama;
  @override
  @JsonKey(name: 'nama_user')
  final String namaUser;
  @override
  @JsonKey()
  final int nominal;
  @override
  @JsonKey(name: 'info_voucher')
  final String infoVoucher;
  @override
  @JsonKey(name: 'periode_mulai')
  final DateTime? periodeMulai;
  @override
  @JsonKey(name: 'periode_selesai')
  final DateTime? periodeSelesai;
  @override
  @JsonKey()
  final int type;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final String catatan;

  @override
  String toString() {
    return 'Voucher(idVoucher: $idVoucher, idUser: $idUser, nama: $nama, namaUser: $namaUser, nominal: $nominal, infoVoucher: $infoVoucher, periodeMulai: $periodeMulai, periodeSelesai: $periodeSelesai, type: $type, status: $status, catatan: $catatan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Voucher &&
            (identical(other.idVoucher, idVoucher) ||
                other.idVoucher == idVoucher) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.namaUser, namaUser) ||
                other.namaUser == namaUser) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.infoVoucher, infoVoucher) ||
                other.infoVoucher == infoVoucher) &&
            (identical(other.periodeMulai, periodeMulai) ||
                other.periodeMulai == periodeMulai) &&
            (identical(other.periodeSelesai, periodeSelesai) ||
                other.periodeSelesai == periodeSelesai) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.catatan, catatan) || other.catatan == catatan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idVoucher,
      idUser,
      nama,
      namaUser,
      nominal,
      infoVoucher,
      periodeMulai,
      periodeSelesai,
      type,
      status,
      catatan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VoucherCopyWith<_$_Voucher> get copyWith =>
      __$$_VoucherCopyWithImpl<_$_Voucher>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VoucherToJson(
      this,
    );
  }
}

abstract class _Voucher implements Voucher {
  factory _Voucher(
      {@JsonKey(name: 'id_voucher') final int idVoucher,
      @JsonKey(name: 'id_user') final int idUser,
      final String nama,
      @JsonKey(name: 'nama_user') final String namaUser,
      final int nominal,
      @JsonKey(name: 'info_voucher') final String infoVoucher,
      @JsonKey(name: 'periode_mulai') final DateTime? periodeMulai,
      @JsonKey(name: 'periode_selesai') final DateTime? periodeSelesai,
      final int type,
      final int status,
      final String catatan}) = _$_Voucher;

  factory _Voucher.fromJson(Map<String, dynamic> json) = _$_Voucher.fromJson;

  @override
  @JsonKey(name: 'id_voucher')
  int get idVoucher;
  @override
  @JsonKey(name: 'id_user')
  int get idUser;
  @override
  String get nama;
  @override
  @JsonKey(name: 'nama_user')
  String get namaUser;
  @override
  int get nominal;
  @override
  @JsonKey(name: 'info_voucher')
  String get infoVoucher;
  @override
  @JsonKey(name: 'periode_mulai')
  DateTime? get periodeMulai;
  @override
  @JsonKey(name: 'periode_selesai')
  DateTime? get periodeSelesai;
  @override
  int get type;
  @override
  int get status;
  @override
  String get catatan;
  @override
  @JsonKey(ignore: true)
  _$$_VoucherCopyWith<_$_Voucher> get copyWith =>
      throw _privateConstructorUsedError;
}
