// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

/// @nodoc
mixin _$CartItem {
  Menu? get menu => throw _privateConstructorUsedError;
  set menu(Menu? value) => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  set quantity(int value) => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  set note(String value) => throw _privateConstructorUsedError;
  MenuVariant? get level => throw _privateConstructorUsedError;
  set level(MenuVariant? value) => throw _privateConstructorUsedError;
  List<MenuVariant> get toppings => throw _privateConstructorUsedError;
  set toppings(List<MenuVariant> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res, CartItem>;
  @useResult
  $Res call(
      {Menu? menu,
      int quantity,
      String note,
      MenuVariant? level,
      List<MenuVariant> toppings});

  $MenuCopyWith<$Res>? get menu;
  $MenuVariantCopyWith<$Res>? get level;
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res, $Val extends CartItem>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menu = freezed,
    Object? quantity = null,
    Object? note = null,
    Object? level = freezed,
    Object? toppings = null,
  }) {
    return _then(_value.copyWith(
      menu: freezed == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Menu?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as MenuVariant?,
      toppings: null == toppings
          ? _value.toppings
          : toppings // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $MenuVariantCopyWith<$Res>? get level {
    if (_value.level == null) {
      return null;
    }

    return $MenuVariantCopyWith<$Res>(_value.level!, (value) {
      return _then(_value.copyWith(level: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$$_CartItemCopyWith(
          _$_CartItem value, $Res Function(_$_CartItem) then) =
      __$$_CartItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Menu? menu,
      int quantity,
      String note,
      MenuVariant? level,
      List<MenuVariant> toppings});

  @override
  $MenuCopyWith<$Res>? get menu;
  @override
  $MenuVariantCopyWith<$Res>? get level;
}

/// @nodoc
class __$$_CartItemCopyWithImpl<$Res>
    extends _$CartItemCopyWithImpl<$Res, _$_CartItem>
    implements _$$_CartItemCopyWith<$Res> {
  __$$_CartItemCopyWithImpl(
      _$_CartItem _value, $Res Function(_$_CartItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menu = freezed,
    Object? quantity = null,
    Object? note = null,
    Object? level = freezed,
    Object? toppings = null,
  }) {
    return _then(_$_CartItem(
      menu: freezed == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Menu?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as MenuVariant?,
      toppings: null == toppings
          ? _value.toppings
          : toppings // ignore: cast_nullable_to_non_nullable
              as List<MenuVariant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartItem extends _CartItem {
  _$_CartItem(
      {this.menu,
      this.quantity = 0,
      this.note = '',
      this.level,
      this.toppings = const []})
      : super._();

  factory _$_CartItem.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemFromJson(json);

  @override
  Menu? menu;
  @override
  @JsonKey()
  int quantity;
  @override
  @JsonKey()
  String note;
  @override
  MenuVariant? level;
  @override
  @JsonKey()
  List<MenuVariant> toppings;

  @override
  String toString() {
    return 'CartItem(menu: $menu, quantity: $quantity, note: $note, level: $level, toppings: $toppings)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartItemCopyWith<_$_CartItem> get copyWith =>
      __$$_CartItemCopyWithImpl<_$_CartItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartItemToJson(
      this,
    );
  }
}

abstract class _CartItem extends CartItem {
  factory _CartItem(
      {Menu? menu,
      int quantity,
      String note,
      MenuVariant? level,
      List<MenuVariant> toppings}) = _$_CartItem;
  _CartItem._() : super._();

  factory _CartItem.fromJson(Map<String, dynamic> json) = _$_CartItem.fromJson;

  @override
  Menu? get menu;
  set menu(Menu? value);
  @override
  int get quantity;
  set quantity(int value);
  @override
  String get note;
  set note(String value);
  @override
  MenuVariant? get level;
  set level(MenuVariant? value);
  @override
  List<MenuVariant> get toppings;
  set toppings(List<MenuVariant> value);
  @override
  @JsonKey(ignore: true)
  _$$_CartItemCopyWith<_$_CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}
