// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailMenu _$$_DetailMenuFromJson(Map<String, dynamic> json) =>
    _$_DetailMenu(
      menu: json['menu'] == null
          ? null
          : Menu.fromJson(json['menu'] as Map<String, dynamic>),
      topping: (json['topping'] as List<dynamic>?)
              ?.map((e) => MenuVariant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      level: (json['level'] as List<dynamic>?)
              ?.map((e) => MenuVariant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DetailMenuToJson(_$_DetailMenu instance) =>
    <String, dynamic>{
      'menu': instance.menu,
      'topping': instance.topping,
      'level': instance.level,
    };
