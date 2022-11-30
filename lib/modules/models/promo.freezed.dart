// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'promo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Promo _$PromoFromJson(Map<String, dynamic> json) {
  return _Promo.fromJson(json);
}

/// @nodoc
mixin _$Promo {
  @JsonKey(name: 'id_promo')
  int get idPromo => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int? get diskon => throw _privateConstructorUsedError;
  int? get nominal => throw _privateConstructorUsedError;
  int? get kadaluarsa => throw _privateConstructorUsedError;
  @JsonKey(name: 'syarat_ketentuan')
  String get syaratKetentuan => throw _privateConstructorUsedError;
  String? get foto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromoCopyWith<Promo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoCopyWith<$Res> {
  factory $PromoCopyWith(Promo value, $Res Function(Promo) then) =
      _$PromoCopyWithImpl<$Res, Promo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_promo') int idPromo,
      String nama,
      String type,
      int? diskon,
      int? nominal,
      int? kadaluarsa,
      @JsonKey(name: 'syarat_ketentuan') String syaratKetentuan,
      String? foto});
}

/// @nodoc
class _$PromoCopyWithImpl<$Res, $Val extends Promo>
    implements $PromoCopyWith<$Res> {
  _$PromoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idPromo = null,
    Object? nama = null,
    Object? type = null,
    Object? diskon = freezed,
    Object? nominal = freezed,
    Object? kadaluarsa = freezed,
    Object? syaratKetentuan = null,
    Object? foto = freezed,
  }) {
    return _then(_value.copyWith(
      idPromo: null == idPromo
          ? _value.idPromo
          : idPromo // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      diskon: freezed == diskon
          ? _value.diskon
          : diskon // ignore: cast_nullable_to_non_nullable
              as int?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int?,
      kadaluarsa: freezed == kadaluarsa
          ? _value.kadaluarsa
          : kadaluarsa // ignore: cast_nullable_to_non_nullable
              as int?,
      syaratKetentuan: null == syaratKetentuan
          ? _value.syaratKetentuan
          : syaratKetentuan // ignore: cast_nullable_to_non_nullable
              as String,
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromoCopyWith<$Res> implements $PromoCopyWith<$Res> {
  factory _$$_PromoCopyWith(_$_Promo value, $Res Function(_$_Promo) then) =
      __$$_PromoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_promo') int idPromo,
      String nama,
      String type,
      int? diskon,
      int? nominal,
      int? kadaluarsa,
      @JsonKey(name: 'syarat_ketentuan') String syaratKetentuan,
      String? foto});
}

/// @nodoc
class __$$_PromoCopyWithImpl<$Res> extends _$PromoCopyWithImpl<$Res, _$_Promo>
    implements _$$_PromoCopyWith<$Res> {
  __$$_PromoCopyWithImpl(_$_Promo _value, $Res Function(_$_Promo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idPromo = null,
    Object? nama = null,
    Object? type = null,
    Object? diskon = freezed,
    Object? nominal = freezed,
    Object? kadaluarsa = freezed,
    Object? syaratKetentuan = null,
    Object? foto = freezed,
  }) {
    return _then(_$_Promo(
      idPromo: null == idPromo
          ? _value.idPromo
          : idPromo // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      diskon: freezed == diskon
          ? _value.diskon
          : diskon // ignore: cast_nullable_to_non_nullable
              as int?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int?,
      kadaluarsa: freezed == kadaluarsa
          ? _value.kadaluarsa
          : kadaluarsa // ignore: cast_nullable_to_non_nullable
              as int?,
      syaratKetentuan: null == syaratKetentuan
          ? _value.syaratKetentuan
          : syaratKetentuan // ignore: cast_nullable_to_non_nullable
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
class _$_Promo extends _Promo {
  _$_Promo(
      {@JsonKey(name: 'id_promo') this.idPromo = 0,
      this.nama = '',
      this.type = '',
      this.diskon,
      this.nominal,
      this.kadaluarsa,
      @JsonKey(name: 'syarat_ketentuan') this.syaratKetentuan = '',
      this.foto})
      : super._();

  factory _$_Promo.fromJson(Map<String, dynamic> json) =>
      _$$_PromoFromJson(json);

  @override
  @JsonKey(name: 'id_promo')
  final int idPromo;
  @override
  @JsonKey()
  final String nama;
  @override
  @JsonKey()
  final String type;
  @override
  final int? diskon;
  @override
  final int? nominal;
  @override
  final int? kadaluarsa;
  @override
  @JsonKey(name: 'syarat_ketentuan')
  final String syaratKetentuan;
  @override
  final String? foto;

  @override
  String toString() {
    return 'Promo(idPromo: $idPromo, nama: $nama, type: $type, diskon: $diskon, nominal: $nominal, kadaluarsa: $kadaluarsa, syaratKetentuan: $syaratKetentuan, foto: $foto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Promo &&
            (identical(other.idPromo, idPromo) || other.idPromo == idPromo) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.diskon, diskon) || other.diskon == diskon) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.kadaluarsa, kadaluarsa) ||
                other.kadaluarsa == kadaluarsa) &&
            (identical(other.syaratKetentuan, syaratKetentuan) ||
                other.syaratKetentuan == syaratKetentuan) &&
            (identical(other.foto, foto) || other.foto == foto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idPromo, nama, type, diskon,
      nominal, kadaluarsa, syaratKetentuan, foto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromoCopyWith<_$_Promo> get copyWith =>
      __$$_PromoCopyWithImpl<_$_Promo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromoToJson(
      this,
    );
  }
}

abstract class _Promo extends Promo {
  factory _Promo(
      {@JsonKey(name: 'id_promo') final int idPromo,
      final String nama,
      final String type,
      final int? diskon,
      final int? nominal,
      final int? kadaluarsa,
      @JsonKey(name: 'syarat_ketentuan') final String syaratKetentuan,
      final String? foto}) = _$_Promo;
  _Promo._() : super._();

  factory _Promo.fromJson(Map<String, dynamic> json) = _$_Promo.fromJson;

  @override
  @JsonKey(name: 'id_promo')
  int get idPromo;
  @override
  String get nama;
  @override
  String get type;
  @override
  int? get diskon;
  @override
  int? get nominal;
  @override
  int? get kadaluarsa;
  @override
  @JsonKey(name: 'syarat_ketentuan')
  String get syaratKetentuan;
  @override
  String? get foto;
  @override
  @JsonKey(ignore: true)
  _$$_PromoCopyWith<_$_Promo> get copyWith =>
      throw _privateConstructorUsedError;
}
