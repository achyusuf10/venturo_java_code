// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id_user: json['id_user'] as int,
      email: json['email'] as String,
      nama: json['nama'] as String,
      tgl_lahir: tglFromJson(json['tgl_lahir'] as String?),
      alamat: json['alamat'] as String?,
      telepon: json['telepon'] as String?,
      ktp: json['ktp'] as String?,
      pin: json['pin'] as String,
      foto: json['foto'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id_user': instance.id_user,
      'email': instance.email,
      'nama': instance.nama,
      'tgl_lahir': tglToJson(instance.tgl_lahir),
      'alamat': instance.alamat,
      'telepon': instance.telepon,
      'ktp': instance.ktp,
      'pin': instance.pin,
      'foto': instance.foto,
    };
