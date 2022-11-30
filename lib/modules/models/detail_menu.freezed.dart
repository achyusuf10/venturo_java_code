// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailMenu _$DetailMenuFromJson(Map<String, dynamic> json) {
  return _DetailMenu.fromJson(json);
}

/// @nodoc
mixin _$DetailMenu {
  Menu? get menu => throw _privateConstructorUsedError;
  List<MenuVariant> get topping => throw _privateConstructorUsedError;
  List<MenuVariant> get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailMenuCopyWith<DetailMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailMenuCopyWith<$Res> {
  factory $DetailMenuCopyWith(
          DetailMenu value, $Res Function(DetailMenu) then) =
      _$DetailMenuCopyWithImpl<$Res, DetailMenu>;
  @useResult
  $Res call({Menu? menu, List<MenuVariant> topping, List<MenuVariant> level});

  $MenuCopyWith<$Res>? get menu;
}

/// @nodoc
class _$DetailMenuCopyWithImpl<$Res, $Val extends DetailMenu>
    implements $DetailMenuCopyWith<$Res> {
  _$DetailMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menu = freezed,
    Object? topping = null,
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      menu: freezed == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Menu?,
      topping: null == topping
          ? _value.topping
          : topping // ignore: cast_nullable_to_non_nullable
              as List<MenuVariant>,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as List<MenuVariant>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MenuCopyWith<$Res>? get menu {
    if (_value.menu == null) {
      return null;
    }

    return $MenuCopyWith<$Res>(_value.menu!, (value) {
      return _then(_value.copyWith(menu: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailMenuCopyWith<$Res>
    implements $DetailMenuCopyWith<$Res> {
  factory _$$_DetailMenuCopyWith(
          _$_DetailMenu value, $Res Function(_$_DetailMenu) then) =
      __$$_DetailMenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Menu? menu, List<MenuVariant> topping, List<MenuVariant> level});

  @override
  $MenuCopyWith<$Res>? get menu;
}

/// @nodoc
class __$$_DetailMenuCopyWithImpl<$Res>
    extends _$DetailMenuCopyWithImpl<$Res, _$_DetailMenu>
    implements _$$_DetailMenuCopyWith<$Res> {
  __$$_DetailMenuCopyWithImpl(
      _$_DetailMenu _value, $Res Function(_$_DetailMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menu = freezed,
    Object? topping = null,
    Object? level = null,
  }) {
    return _then(_$_DetailMenu(
      menu: freezed == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Menu?,
      topping: null == topping
          ? _value._topping
          : topping // ignore: cast_nullable_to_non_nullable
              as List<MenuVariant>,
      level: null == level
          ? _value._level
          : level // ignore: cast_nullable_to_non_nullable
              as List<MenuVariant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailMenu implements _DetailMenu {
  _$_DetailMenu(
      {this.menu,
      final List<MenuVariant> topping = const [],
      final List<MenuVariant> level = const []})
      : _topping = topping,
        _level = level;

  factory _$_DetailMenu.fromJson(Map<String, dynamic> json) =>
      _$$_DetailMenuFromJson(json);

  @override
  final Menu? menu;
  final List<MenuVariant> _topping;
  @override
  @JsonKey()
  List<MenuVariant> get topping {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topping);
  }

  final List<MenuVariant> _level;
  @override
  @JsonKey()
  List<MenuVariant> get level {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_level);
  }

  @override
  String toString() {
    return 'DetailMenu(menu: $menu, topping: $topping, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailMenu &&
            (identical(other.menu, menu) || other.menu == menu) &&
            const DeepCollectionEquality().equals(other._topping, _topping) &&
            const DeepCollectionEquality().equals(other._level, _level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      menu,
      const DeepCollectionEquality().hash(_topping),
      const DeepCollectionEquality().hash(_level));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailMenuCopyWith<_$_DetailMenu> get copyWith =>
      __$$_DetailMenuCopyWithImpl<_$_DetailMenu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailMenuToJson(
      this,
    );
  }
}

abstract class _DetailMenu implements DetailMenu {
  factory _DetailMenu(
      {final Menu? menu,
      final List<MenuVariant> topping,
      final List<MenuVariant> level}) = _$_DetailMenu;

  factory _DetailMenu.fromJson(Map<String, dynamic> json) =
      _$_DetailMenu.fromJson;

  @override
  Menu? get menu;
  @override
  List<MenuVariant> get topping;
  @override
  List<MenuVariant> get level;
  @override
  @JsonKey(ignore: true)
  _$$_DetailMenuCopyWith<_$_DetailMenu> get copyWith =>
      throw _privateConstructorUsedError;
}
