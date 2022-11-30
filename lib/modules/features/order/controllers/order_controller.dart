import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../configs/routes/app_routes.dart';
import '../../../models/cart_item.dart';
import '../../../models/order.dart';
import '../../cart/controllers/cart_controller.dart';
import '../../home/controllers/home_controller.dart';
import '../repositories/order_repository.dart';

class OrderController extends GetxController {
  static OrderController get to => Get.find();

  @override
  void onInit() {
    super.onInit();

    /// Ambil data pesanan yang sedang berjalan dan riwayat pesanan
    fetchOnGoing();
    fetchHistory();
  }

  /// Data pesanan yang sedang berjalan
  RxString onGoingStatus = RxString('loading');
  RxList<Order> onGoingOrders = RxList<Order>();

  /// Ambil data pesanan yang sedang berjalan
  Future<void> fetchOnGoing() async {
    onGoingStatus.value = 'loading';

    /// Fetch data pesanan yang sedang berjalan
    var listOrderRes = await OrderRepository.getOnGoing();

    listOrderRes.fold((l) {
      if (l.statusCode == 204) {
        onGoingStatus.value = 'empty';
      } else {
        onGoingStatus.value = 'error';
      }
    }, (r) {
      if (r.isEmpty) {
        onGoingOrders.value = [];
        onGoingStatus.value = 'empty';
      } else {
        /// Sort based on date
        r.sort((a, b) => b.tanggal!.compareTo(a.tanggal!));

        /// Remove Order yang status bukan on going
        r.removeWhere((element) => element.status != 0);
        onGoingOrders.value = r;
        onGoingStatus.value = 'success';
      }
    });
  }

  /// Data riwayat pesanan
  RxString historyStatus = RxString('loading');
  RxList<Order> historyOrders = RxList<Order>();

  /// Data filter riwayat pesanan
  String selectedCategory = 'all';
  DateTimeRange selectedDateRange = DateTimeRange(
    start: DateTime.now().subtract(const Duration(days: 30)),
    end: DateTime.now(),
  );

  /// Atur filter riwayat pesanan
  void setFilter({String? category, DateTimeRange? dateRange}) {
    selectedCategory = category ?? 'all';
    selectedDateRange = dateRange ?? selectedDateRange;
    historyOrders.refresh();
  }

  /// Filter riwayat pesanan
  List<Order> get historyOrderFiltered {
    List<Order> list = historyOrders.toList();

    /// Filter category
    if (selectedCategory == 'canceled') {
      list.removeWhere((e) => e.status != 4);
    } else if (selectedCategory == 'completed') {
      list.removeWhere((e) => e.status != 3);
    }

    /// Filter date
    list.removeWhere((e) =>
        e.tanggal!.isBefore(selectedDateRange.start) ||
        e.tanggal!.isAfter(selectedDateRange.end));

    /// Sort based on date
    list.sort((a, b) => b.tanggal!.compareTo(a.tanggal!));

    return list;
  }

  /// Ambil data riwayat pesanan
  Future<void> fetchHistory() async {
    historyStatus.value = 'loading';

    /// Fetch data riwayat pesanan
    var listOrderRes = await OrderRepository.getHistory();
    listOrderRes.fold((l) {
      if (l.statusCode == 204) {
        historyStatus.value = 'empty';
      } else {
        historyStatus.value = 'error';
      }
    }, (r) {
      if (r.isEmpty) {
        historyOrders.value = [];
        historyStatus.value = 'empty';
      } else {
        historyOrders.value = r;
        historyStatus.value = 'success';
      }
    });
  }

  /// Memesan menu lagi
  void onOrderAgain(Order order) {
    for (var detail in order.menu) {
      /// Apakah data menu masih ada
      var menu = HomeController.to.listMenu
          .firstWhereOrNull((e) => e.idMenu == detail.idMenu);

      if (menu != null) {
        /// Jika menu ada, tambahkan ke cart
        CartController.to.add(CartItem(
          menu: menu,
          quantity: detail.jumlah,
          note: '',
          level: null,
          toppings: [],
        ));
      }
    }

    /// Kembali ke halaman keranjang
    Get.toNamed(AppRoutes.cartView);
  }
}
