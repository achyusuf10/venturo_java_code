import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount.freezed.dart';
part 'discount.g.dart';

@freezed
class Discount with _$Discount {
  factory Discount({
    @JsonKey(name: 'id_diskon') @Default(0) int idDiskon,
    @JsonKey(name: 'id_user') @Default(0) int idUser,
    @JsonKey(name: 'nama_user') @Default('') String namaUser,
    @Default('') String nama,
    @Default(0) int nominal,
  }) = _Discount;

  factory Discount.fromJson(Map<String, dynamic> json) =>
      _$DiscountFromJson(json);
}
