import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:venturo_java_code/utils/extensions/currency_extension.dart';
import 'package:venturo_java_code/utils/extensions/string_extension.dart';
part 'promo.freezed.dart';
part 'promo.g.dart';

@freezed
class Promo with _$Promo {
  const Promo._();
  factory Promo({
    @JsonKey(name: 'id_promo') @Default(0) int idPromo,
    @Default('') String nama,
    @Default('') String type,
    int? diskon,
    int? nominal,
    int? kadaluarsa,
    @JsonKey(name: 'syarat_ketentuan') @Default('') String syaratKetentuan,
    String? foto,
  }) = _Promo;

  factory Promo.fromJson(Map<String, dynamic> json) => _$PromoFromJson(json);

  /// Mendapatkan jenis promo
  String get typeLabel => type.tr.toTitleCase();

  /// Mendapatkan besaran promo
  String get amountLabel => type == 'diskon' ? '$diskon%' : nominal!.toShortK();

  /// Mendapatkan jenis dan besaran promo
  String get typeAmountLabel => '$typeLabel $amountLabel';
}
