// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Menu _$MenuFromJson(Map<String, dynamic> json) {
  return _Menu.fromJson(json);
}

/// @nodoc
mixin _$Menu {
  @JsonKey(name: 'id_menu')
  int get idMenu => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get kategori => throw _privateConstructorUsedError;
  int get harga => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  String get foto => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuCopyWith<Menu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuCopyWith<$Res> {
  factory $MenuCopyWith(Menu value, $Res Function(Menu) then) =
      _$MenuCopyWithImpl<$Res, Menu>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_menu') int idMenu,
      String nama,
      String kategori,
      int harga,
      String deskripsi,
      String foto,
      int status});
}

/// @nodoc
class _$MenuCopyWithImpl<$Res, $Val extends Menu>
    implements $MenuCopyWith<$Res> {
  _$MenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMenu = null,
    Object? nama = null,
    Object? kategori = null,
    Object? harga = null,
    Object? deskripsi = null,
    Object? foto = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      idMenu: null == idMenu
          ? _value.idMenu
          : idMenu // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      kategori: null == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String,
      harga: null == harga
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as int,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      foto: null == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuCopyWith<$Res> implements $MenuCopyWith<$Res> {
  factory _$$_MenuCopyWith(_$_Menu value, $Res Function(_$_Menu) then) =
      __$$_MenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_menu') int idMenu,
      String nama,
      String kategori,
      int harga,
      String deskripsi,
      String foto,
      int status});
}

/// @nodoc
class __$$_MenuCopyWithImpl<$Res> extends _$MenuCopyWithImpl<$Res, _$_Menu>
    implements _$$_MenuCopyWith<$Res> {
  __$$_MenuCopyWithImpl(_$_Menu _value, $Res Function(_$_Menu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMenu = null,
    Object? nama = null,
    Object? kategori = null,
    Object? harga = null,
    Object? deskripsi = null,
    Object? foto = null,
    Object? status = null,
  }) {
    return _then(_$_Menu(
      idMenu: null == idMenu
          ? _value.idMenu
          : idMenu // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      kategori: null == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String,
      harga: null == harga
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as int,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      foto: null == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Menu extends _Menu {
  _$_Menu(
      {@JsonKey(name: 'id_menu') this.idMenu = 0,
      this.nama = '',
      this.kategori = '',
      this.harga = 0,
      this.deskripsi = '',
      this.foto = AppConst.defaultMenuPhoto,
      this.status = 0})
      : super._();

  factory _$_Menu.fromJson(Map<String, dynamic> json) => _$$_MenuFromJson(json);

  @override
  @JsonKey(name: 'id_menu')
  final int idMenu;
  @override
  @JsonKey()
  final String nama;
  @override
  @JsonKey()
  final String kategori;
  @override
  @JsonKey()
  final int harga;
  @override
  @JsonKey()
  final String deskripsi;
  @override
  @JsonKey()
  final String foto;
  @override
  @JsonKey()
  final int status;

  @override
  String toString() {
    return 'Menu(idMenu: $idMenu, nama: $nama, kategori: $kategori, harga: $harga, deskripsi: $deskripsi, foto: $foto, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Menu &&
            (identical(other.idMenu, idMenu) || other.idMenu == idMenu) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.kategori, kategori) ||
                other.kategori == kategori) &&
            (identical(other.harga, harga) || other.harga == harga) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.foto, foto) || other.foto == foto) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, idMenu, nama, kategori, harga, deskripsi, foto, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuCopyWith<_$_Menu> get copyWith =>
      __$$_MenuCopyWithImpl<_$_Menu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuToJson(
      this,
    );
  }
}

abstract class _Menu extends Menu {
  factory _Menu(
      {@JsonKey(name: 'id_menu') final int idMenu,
      final String nama,
      final String kategori,
      final int harga,
      final String deskripsi,
      final String foto,
      final int status}) = _$_Menu;
  _Menu._() : super._();

  factory _Menu.fromJson(Map<String, dynamic> json) = _$_Menu.fromJson;

  @override
  @JsonKey(name: 'id_menu')
  int get idMenu;
  @override
  String get nama;
  @override
  String get kategori;
  @override
  int get harga;
  @override
  String get deskripsi;
  @override
  String get foto;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_MenuCopyWith<_$_Menu> get copyWith => throw _privateConstructorUsedError;
}
