// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenuVariant _$$_MenuVariantFromJson(Map<String, dynamic> json) =>
    _$_MenuVariant(
      idDetail: json['id_detail'] as int? ?? 0,
      keterangan: json['keterangan'] as String? ?? '',
      type: json['type'] as String? ?? '',
      harga: json['harga'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MenuVariantToJson(_$_MenuVariant instance) =>
    <String, dynamic>{
      'id_detail': instance.idDetail,
      'keterangan': instance.keterangan,
      'type': instance.type,
      'harga': instance.harga,
    };
