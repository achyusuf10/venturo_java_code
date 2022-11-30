import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/commons/constants.dart';
import 'menu.dart';
import 'menu_variant.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@unfreezed
class CartItem with _$CartItem {
  const CartItem._();
  factory CartItem({
    Menu? menu,
    @Default(0) int quantity,
    @Default('') String note,
    MenuVariant? level,
    @Default([]) List<MenuVariant> toppings,
  }) = _CartItem;

  /// Apakah menu ini adalah makanan
  bool get isFood => menu!.kategori == AppConst.foodCategory;

  /// Apakah menu ini adalah minuman
  bool get isDrink => menu!.kategori == AppConst.drinkCategory;

  /// Mendapatkan harga dari level yang digunakan
  int get totalLevelPrice {
    if (level == null) {
      return 0;
    } else {
      return level!.harga;
    }
  }

  /// Mendapatkan harga dari topping yang digunakan
  int get totalToppingsPrice {
    if (toppings.isEmpty) {
      return 0;
    } else {
      return toppings.fold<int>(0, (total, topping) => total + topping.harga);
    }
  }

  /// Mendapatkan harga dari menu beserta level dan topping
  int get price {
    return menu!.harga + totalLevelPrice + totalToppingsPrice;
  }

  /// Mendapakan harga total dari menu dikali dengan jumlah yang dipesan
  int get totalPrice {
    return price * quantity;
  }

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}
