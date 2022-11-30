import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';

import '../../../../constants/commons/constants.dart';
import '../../../models/menu.dart';
import '../../../models/promo.dart';
import '../repositories/menu_repository.dart';
import '../repositories/promo_repository.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();
  late Debouncer debouncer;
  late TextEditingController searchController;

  @override
  void onInit() {
    searchController = TextEditingController();
    debouncer = Debouncer(delay: const Duration(milliseconds: 500));
    super.onInit();

    /// Mendapatkan promo dan menu
    getListPromo();
    getListMenu();
  }

  @override
  void onClose() {
    searchController.dispose();
    debouncer.cancel();
    super.onClose();
  }

  /// Reload data
  Future<void> reload() async {
    /// Bersihkan pencarian
    searchController.clear();
    setQueryMenu('');

    /// Bersihkan filter kategori
    setCategoryMenu('all');

    /// Fetch data
    await Future.any([
      HomeController.to.getListPromo(),
      HomeController.to.getListMenu(),
    ]);
  }

  /// Promo
  RxString statusPromo = RxString('loading');
  RxString messagePromo = RxString('');
  RxList<Promo> listPromo = RxList<Promo>();

  /// Get all promo
  Future<void> getListPromo() async {
    statusPromo.value = 'loading';

    /// Ambil data dari API
    var listPromoRes = await PromoRepository.getAllByUser();

    listPromoRes.fold((l) {
      if (l.statusCode == 204) {
        statusPromo.value = 'empty';
        return;
      }

      /// Jika request API gagal, tampilkan pesan error
      statusPromo.value = 'error';
      messagePromo.value = (l.message.isEmpty) ? 'Unknown error'.tr : l.message;
    }, (r) {
      statusPromo.value = 'success';
      listPromo.value = r;
    });
  }

  /// Menu
  RxString categoryMenu = RxString('all');
  RxString queryMenu = RxString('');
  RxString statusMenu = RxString('loading');
  RxString messageMenu = RxString('');
  RxList<Menu> listMenu = RxList<Menu>();

  /// Update category filter menu
  Future<void> setCategoryMenu(String value) async {
    categoryMenu.value = value;
  }

  /// Update search filter menu
  Future<void> setQueryMenu(String value) async {
    debouncer.call(() {
      queryMenu.value = value.trim();
    });
  }

  /// Fetch List Menu
  Future<void> getListMenu() async {
    statusMenu.value = 'loading';

    var listMenuRes = await MenuRepository.getAll();

    listMenuRes.fold((l) {
      if (l.statusCode == 204) {
        statusMenu.value = 'empty';
        return;
      }

      /// Jika request API gagal, tampilkan pesan error
      statusMenu.value = 'error';
      messageMenu.value = (l.message.isEmpty) ? 'Unknown error'.tr : l.message;
    }, (r) {
      statusMenu.value = 'success';
      listMenu.value = r;
    });
  }

  /// Get food list
  List<Menu> get foodMenu => _getListMenuByFilter(AppConst.foodCategory);

  /// Get drink list
  List<Menu> get drinkMenu => _getListMenuByFilter(AppConst.drinkCategory);

  List<Menu> _getListMenuByFilter(String category) {
    return listMenu
        .where((e) =>
            e.kategori == category &&
            e.nama.toLowerCase().contains(queryMenu.value.toLowerCase()))
        .toList();
  }
}
