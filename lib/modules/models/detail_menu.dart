import 'package:freezed_annotation/freezed_annotation.dart';

import 'menu.dart';
import 'menu_variant.dart';

part 'detail_menu.freezed.dart';
part 'detail_menu.g.dart';

@freezed
class DetailMenu with _$DetailMenu {
  factory DetailMenu({
    Menu? menu,
    @Default([]) List<MenuVariant> topping,
    @Default([]) List<MenuVariant> level,
  }) = _DetailMenu;

  factory DetailMenu.fromJson(Map<String, dynamic> json) =>
      _$DetailMenuFromJson(json);
}
