import 'package:venturo_java_code/modules/models/user.dart';

import 'cart_item.dart';
import 'discount.dart';
import 'voucher.dart';

class CartReq {
  final User user;
  final List<CartItem> cart;
  final List<Discount>? discounts;
  final Voucher? voucher;
  final int discountPrice;
  final int totalPrice;

  CartReq({
    required this.user,
    required this.cart,
    this.discounts,
    this.voucher,
    required this.discountPrice,
    required this.totalPrice,
  });

  Map<String, dynamic> toMap() {
    return {
      'order': {
        'id_user': user.idUser,
        'id_voucher': voucher?.idVoucher,
        'id_diskon': discounts?.isEmpty ?? true
            ? null
            : discounts?.map((e) => e.idDiskon).toList(),
        'diskon': voucher == null ? 1 : 0,
        'potongan': discountPrice,
        'total_bayar': totalPrice,
      },
      'menu': cart
          .map((e) => {
                'id_menu': e.menu?.idMenu,
                'harga': e.price,
                'level': e.level?.idDetail,
                'topping': e.toppings.isEmpty
                    ? null
                    : e.toppings.map((e) => e.idDetail).toList(),
                'jumlah': e.quantity,
              })
          .toList(),
    };
  }
}
