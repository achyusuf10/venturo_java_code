// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItem _$$_CartItemFromJson(Map<String, dynamic> json) => _$_CartItem(
      menu: json['menu'] == null
          ? null
          : Menu.fromJson(json['menu'] as Map<String, dynamic>),
      quantity: json['quantity'] as int? ?? 0,
      note: json['note'] as String? ?? '',
      level: json['level'] == null
          ? null
          : MenuVariant.fromJson(json['level'] as Map<String, dynamic>),
      toppings: (json['toppings'] as List<dynamic>?)
              ?.map((e) => MenuVariant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CartItemToJson(_$_CartItem instance) =>
    <String, dynamic>{
      'menu': instance.menu,
      'quantity': instance.quantity,
      'note': instance.note,
      'level': instance.level,
      'toppings': instance.toppings,
    };
