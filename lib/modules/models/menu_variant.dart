import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_variant.freezed.dart';
part 'menu_variant.g.dart';

@freezed
class MenuVariant with _$MenuVariant {
  factory MenuVariant({
    @JsonKey(name: 'id_detail') @Default(0) int idDetail,
    @Default('') String keterangan,
    @Default('') String type,
    @Default(0) int harga,
  }) = _MenuVariant;

  factory MenuVariant.fromJson(Map<String, dynamic> json) =>
      _$MenuVariantFromJson(json);
}
