// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../constants/commons/setting_json.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  User._();
  @HiveType(typeId: 1, adapterName: 'UserAdapter')
  factory User({
    @HiveField(0)
    @JsonKey(name: 'id_user')
    @Default(0)
        int idUser,
    @HiveField(1)
    @Default('')
        String email,
    @HiveField(2)
    @Default('')
        String nama,
    @HiveField(3)
    @JsonKey(
      fromJson: SettingJson.tglFromJson,
      toJson: SettingJson.tglToJson,
      name: 'tgl_lahir',
    )
        DateTime? tglLahir,
    @HiveField(4)
        String? alamat,
    @HiveField(5)
        String? telepon,
    @HiveField(6)
        String? ktp,
    @HiveField(7)
    @Default('')
        String pin,
    @HiveField(8)
        String? foto,
  }) = _User;

  factory User.dummy() {
    return User(
      idUser: 0,
      email: '',
      nama: '',
      tglLahir: null,
      alamat: '',
      telepon: '',
      ktp: '',
      pin: '',
      foto: '',
    );
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
