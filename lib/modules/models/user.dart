import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:venturo_java_code/utils/extensions/date_extension.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required int id_user,
    required String email,
    required String nama,
    @JsonKey(fromJson: tglFromJson, toJson: tglToJson) DateTime? tgl_lahir,
    required String? alamat,
    required String? telepon,
    required String? ktp,
    required String pin,
    required String? foto,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

DateTime? tglFromJson(String? value) {
  if (value == null) return null;
  return DateFormat("dd/MM/yyyy").parse(value);
}

String? tglToJson(DateTime? value) {
  if (value == null) return null;
  return value.toDateString();
}
