// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<_$_User> {
  @override
  final int typeId = 1;

  @override
  _$_User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_User(
      idUser: fields[0] as int,
      email: fields[1] as String,
      nama: fields[2] as String,
      tglLahir: fields[3] as DateTime?,
      alamat: fields[4] as String?,
      telepon: fields[5] as String?,
      ktp: fields[6] as String?,
      pin: fields[7] as String,
      foto: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_User obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.idUser)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.nama)
      ..writeByte(3)
      ..write(obj.tglLahir)
      ..writeByte(4)
      ..write(obj.alamat)
      ..writeByte(5)
      ..write(obj.telepon)
      ..writeByte(6)
      ..write(obj.ktp)
      ..writeByte(7)
      ..write(obj.pin)
      ..writeByte(8)
      ..write(obj.foto);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      idUser: json['id_user'] as int? ?? 0,
      email: json['email'] as String? ?? '',
      nama: json['nama'] as String? ?? '',
      tglLahir: SettingJson.tglFromJson(json['tgl_lahir'] as String?),
      alamat: json['alamat'] as String?,
      telepon: json['telepon'] as String?,
      ktp: json['ktp'] as String?,
      pin: json['pin'] as String? ?? '',
      foto: json['foto'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id_user': instance.idUser,
      'email': instance.email,
      'nama': instance.nama,
      'tgl_lahir': SettingJson.tglToJson(instance.tglLahir),
      'alamat': instance.alamat,
      'telepon': instance.telepon,
      'ktp': instance.ktp,
      'pin': instance.pin,
      'foto': instance.foto,
    };
