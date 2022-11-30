// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  @JsonKey(name: 'id_order')
  int get idOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_order')
  set idOrder(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_struk')
  String get noStruk => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_struk')
  set noStruk(String value) => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  set nama(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_voucher')
  int get idVoucher => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_voucher')
  set idVoucher(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_voucher')
  String get namaVoucher => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_voucher')
  set namaVoucher(String value) => throw _privateConstructorUsedError;
  int get diskon => throw _privateConstructorUsedError;
  set diskon(int value) => throw _privateConstructorUsedError;
  int get potongan => throw _privateConstructorUsedError;
  set potongan(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_bayar')
  int get totalBayar => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_bayar')
  set totalBayar(int value) => throw _privateConstructorUsedError;
  @JsonKey(fromJson: SettingJson.tglFromJson, toJson: SettingJson.tglToJson)
  DateTime? get tanggal => throw _privateConstructorUsedError;
  @JsonKey(fromJson: SettingJson.tglFromJson, toJson: SettingJson.tglToJson)
  set tanggal(DateTime? value) => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  set status(int value) => throw _privateConstructorUsedError;
  List<DetailOrder> get menu => throw _privateConstructorUsedError;
  set menu(List<DetailOrder> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_order')
          int idOrder,
      @JsonKey(name: 'no_struk')
          String noStruk,
      String nama,
      @JsonKey(name: 'id_voucher')
          int idVoucher,
      @JsonKey(name: 'nama_voucher')
          String namaVoucher,
      int diskon,
      int potongan,
      @JsonKey(name: 'total_bayar')
          int totalBayar,
      @JsonKey(fromJson: SettingJson.tglFromJson, toJson: SettingJson.tglToJson)
          DateTime? tanggal,
      int status,
      List<DetailOrder> menu});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idOrder = null,
    Object? noStruk = null,
    Object? nama = null,
    Object? idVoucher = null,
    Object? namaVoucher = null,
    Object? diskon = null,
    Object? potongan = null,
    Object? totalBayar = null,
    Object? tanggal = freezed,
    Object? status = null,
    Object? menu = null,
  }) {
    return _then(_value.copyWith(
      idOrder: null == idOrder
          ? _value.idOrder
          : idOrder // ignore: cast_nullable_to_non_nullable
              as int,
      noStruk: null == noStruk
          ? _value.noStruk
          : noStruk // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      idVoucher: null == idVoucher
          ? _value.idVoucher
          : idVoucher // ignore: cast_nullable_to_non_nullable
              as int,
      namaVoucher: null == namaVoucher
          ? _value.namaVoucher
          : namaVoucher // ignore: cast_nullable_to_non_nullable
              as String,
      diskon: null == diskon
          ? _value.diskon
          : diskon // ignore: cast_nullable_to_non_nullable
              as int,
      potongan: null == potongan
          ? _value.potongan
          : potongan // ignore: cast_nullable_to_non_nullable
              as int,
      totalBayar: null == totalBayar
          ? _value.totalBayar
          : totalBayar // ignore: cast_nullable_to_non_nullable
              as int,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<DetailOrder>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_order')
          int idOrder,
      @JsonKey(name: 'no_struk')
          String noStruk,
      String nama,
      @JsonKey(name: 'id_voucher')
          int idVoucher,
      @JsonKey(name: 'nama_voucher')
          String namaVoucher,
      int diskon,
      int potongan,
      @JsonKey(name: 'total_bayar')
          int totalBayar,
      @JsonKey(fromJson: SettingJson.tglFromJson, toJson: SettingJson.tglToJson)
          DateTime? tanggal,
      int status,
      List<DetailOrder> menu});
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idOrder = null,
    Object? noStruk = null,
    Object? nama = null,
    Object? idVoucher = null,
    Object? namaVoucher = null,
    Object? diskon = null,
    Object? potongan = null,
    Object? totalBayar = null,
    Object? tanggal = freezed,
    Object? status = null,
    Object? menu = null,
  }) {
    return _then(_$_Order(
      idOrder: null == idOrder
          ? _value.idOrder
          : idOrder // ignore: cast_nullable_to_non_nullable
              as int,
      noStruk: null == noStruk
          ? _value.noStruk
          : noStruk // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      idVoucher: null == idVoucher
          ? _value.idVoucher
          : idVoucher // ignore: cast_nullable_to_non_nullable
              as int,
      namaVoucher: null == namaVoucher
          ? _value.namaVoucher
          : namaVoucher // ignore: cast_nullable_to_non_nullable
              as String,
      diskon: null == diskon
          ? _value.diskon
          : diskon // ignore: cast_nullable_to_non_nullable
              as int,
      potongan: null == potongan
          ? _value.potongan
          : potongan // ignore: cast_nullable_to_non_nullable
              as int,
      totalBayar: null == totalBayar
          ? _value.totalBayar
          : totalBayar // ignore: cast_nullable_to_non_nullable
              as int,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<DetailOrder>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order extends _Order {
  _$_Order(
      {@JsonKey(name: 'id_order')
          this.idOrder = 0,
      @JsonKey(name: 'no_struk')
          this.noStruk = '',
      this.nama = '',
      @JsonKey(name: 'id_voucher')
          this.idVoucher = 0,
      @JsonKey(name: 'nama_voucher')
          this.namaVoucher = '',
      this.diskon = 0,
      this.potongan = 0,
      @JsonKey(name: 'total_bayar')
          this.totalBayar = 0,
      @JsonKey(fromJson: SettingJson.tglFromJson, toJson: SettingJson.tglToJson)
          this.tanggal,
      this.status = 0,
      this.menu = const []})
      : super._();

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  @JsonKey(name: 'id_order')
  int idOrder;
  @override
  @JsonKey(name: 'no_struk')
  String noStruk;
  @override
  @JsonKey()
  String nama;
  @override
  @JsonKey(name: 'id_voucher')
  int idVoucher;
  @override
  @JsonKey(name: 'nama_voucher')
  String namaVoucher;
  @override
  @JsonKey()
  int diskon;
  @override
  @JsonKey()
  int potongan;
  @override
  @JsonKey(name: 'total_bayar')
  int totalBayar;
  @override
  @JsonKey(fromJson: SettingJson.tglFromJson, toJson: SettingJson.tglToJson)
  DateTime? tanggal;
  @override
  @JsonKey()
  int status;
  @override
  @JsonKey()
  List<DetailOrder> menu;

  @override
  String toString() {
    return 'Order(idOrder: $idOrder, noStruk: $noStruk, nama: $nama, idVoucher: $idVoucher, namaVoucher: $namaVoucher, diskon: $diskon, potongan: $potongan, totalBayar: $totalBayar, tanggal: $tanggal, status: $status, menu: $menu)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order extends Order {
  factory _Order(
      {@JsonKey(name: 'id_order')
          int idOrder,
      @JsonKey(name: 'no_struk')
          String noStruk,
      String nama,
      @JsonKey(name: 'id_voucher')
          int idVoucher,
      @JsonKey(name: 'nama_voucher')
          String namaVoucher,
      int diskon,
      int potongan,
      @JsonKey(name: 'total_bayar')
          int totalBayar,
      @JsonKey(fromJson: SettingJson.tglFromJson, toJson: SettingJson.tglToJson)
          DateTime? tanggal,
      int status,
      List<DetailOrder> menu}) = _$_Order;
  _Order._() : super._();

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  @JsonKey(name: 'id_order')
  int get idOrder;
  @JsonKey(name: 'id_order')
  set idOrder(int value);
  @override
  @JsonKey(name: 'no_struk')
  String get noStruk;
  @JsonKey(name: 'no_struk')
  set noStruk(String value);
  @override
  String get nama;
  set nama(String value);
  @override
  @JsonKey(name: 'id_voucher')
  int get idVoucher;
  @JsonKey(name: 'id_voucher')
  set idVoucher(int value);
  @override
  @JsonKey(name: 'nama_voucher')
  String get namaVoucher;
  @JsonKey(name: 'nama_voucher')
  set namaVoucher(String value);
  @override
  int get diskon;
  set diskon(int value);
  @override
  int get potongan;
  set potongan(int value);
  @override
  @JsonKey(name: 'total_bayar')
  int get totalBayar;
  @JsonKey(name: 'total_bayar')
  set totalBayar(int value);
  @override
  @JsonKey(fromJson: SettingJson.tglFromJson, toJson: SettingJson.tglToJson)
  DateTime? get tanggal;
  @JsonKey(fromJson: SettingJson.tglFromJson, toJson: SettingJson.tglToJson)
  set tanggal(DateTime? value);
  @override
  int get status;
  set status(int value);
  @override
  List<DetailOrder> get menu;
  set menu(List<DetailOrder> value);
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
