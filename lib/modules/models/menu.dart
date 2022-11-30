import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/commons/constants.dart';

part 'menu.freezed.dart';
part 'menu.g.dart';

@freezed
class Menu with _$Menu {
  const Menu._();
  factory Menu({
    @JsonKey(name: 'id_menu') @Default(0) int idMenu,
    @Default('') String nama,
    @Default('') String kategori,
    @Default(0) int harga,
    @Default('') String deskripsi,
    @Default(AppConst.defaultMenuPhoto) String foto,
    @Default(0) int status,
  }) = _Menu;

  /// Apakah menu ini adalah makanan
  bool get isFood => kategori == AppConst.foodCategory;

  /// Apakah menu ini adalah minuman
  bool get isDrink => kategori == AppConst.drinkCategory;

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
}
