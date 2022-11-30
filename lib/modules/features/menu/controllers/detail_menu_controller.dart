import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../configs/routes/app_routes.dart';
import '../../../../shared/styles/shapes.dart';
import '../../../models/cart_item.dart';
import '../../../models/menu.dart';
import '../../../models/menu_variant.dart';
import '../../cart/controllers/cart_controller.dart';
import '../repositories/detail_menu_repository.dart';
import '../view/components/level_bottom_sheet.dart';
import '../view/components/note_bottom_sheet.dart';
import '../view/components/topping_bottom_sheet.dart';

class DetailMenuController extends GetxController {
  static DetailMenuController get to => Get.find();

  /// Status menu
  RxString status = RxString('loading');
  RxString statusLevels = RxString('loading');
  RxString statusToppings = RxString('loading');
  RxBool isExistsInCart = RxBool(false);

  /// Data menu, level, dan topping
  Rxn<Menu> menu = Rxn<Menu>();
  RxList<MenuVariant> levels = RxList<MenuVariant>();
  RxList<MenuVariant> toppings = RxList<MenuVariant>();

  /// Data keranjang
  RxInt quantity = RxInt(1);
  Rxn<MenuVariant> selectedLevel = Rxn<MenuVariant>();
  RxList<MenuVariant> selectedToppings = RxList<MenuVariant>();
  RxString note = RxString('');

  @override
  void onInit() {
    super.onInit();

    /// Atur menu dari argumen
    menu.value = Get.arguments as Menu;

    /// Fetch data
    fetch();

    /// Update data from cart
    //updateDataFromCart();
  }

  void fetch() async {
    /// Lengkapi data menu dari API
    var resMenu = await DetailMenuRepository.getFromId(menu.value!.idMenu);
    resMenu.fold(
      (l) {
        status.value = 'error';
        statusLevels.value = 'error';
        statusToppings.value = 'error';
      },
      (r) {
        status.value = 'success';
        if (r.level.isNotEmpty) {
          statusLevels.value = 'success';
          levels.value = r.level;

          /// Atur level ke default
          selectedLevel.value ??= levels.first;
        } else {
          statusLevels.value = 'empty';
        }

        if (r.topping.isNotEmpty) {
          statusToppings.value = 'success';
          toppings.value = r.topping;
        } else {
          statusToppings.value = 'empty';
        }
      },
    );
  }

  /// Getter for selected level text
  String get selectedLevelText => selectedLevel.value?.keterangan ?? '-';

  /// Getter for selected topping text
  String get selectedToppingsText => selectedToppings.isNotEmpty
      ? selectedToppings.map((topping) => topping.keterangan).join(', ')
      : 'Choose topping'.tr;

  /// Getter untuk Cart Item
  CartItem get cartItem => CartItem(
      menu: menu.value!,
      quantity: quantity.value,
      note: note.value,
      level: selectedLevel.value,
      toppings: toppings.isEmpty ? [] : selectedToppings.toList());

  /// On increment quantity
  void onIncrement() {
    quantity.value++;
  }

  /// On decrement quantity
  void onDecrement() {
    /// Jika quantity lebih dari 1, maka decrement
    if (quantity > 1 || quantity > 0 && isExistsInCart.value) quantity.value--;
  }

  /// Open note bottom sheet
  void openNoteBottomSheet() {
    Get.bottomSheet(
      NoteBottomSheet(),
      backgroundColor: Colors.white,
      shape: CustomShape.topRoundedShape,
      isScrollControlled: true,
    );
  }

  /// Set note
  void setNote(String note) {
    this.note.value = note.trim();
    if (Get.isBottomSheetOpen == true) Get.back();
  }

  /// Open level bottom sheet
  void openLevelBottomSheet() {
    Get.bottomSheet(
      const LevelBottomSheet(),
      backgroundColor: Colors.white,
      shape: CustomShape.topRoundedShape,
      isScrollControlled: true,
    );
  }

  /// Set level
  void setLevel(MenuVariant level) {
    selectedLevel.value = level;
    if (Get.isBottomSheetOpen == true) Get.back();
  }

  /// Set topping
  void toggleTopping(MenuVariant topping) {
    if (selectedToppings.contains(topping)) {
      /// Jika topping sudah ada, hapus dari list
      selectedToppings.remove(topping);
    } else {
      /// Jika topping belum ada, tambahkan ke list
      selectedToppings.add(topping);
    }

    /// Sorting list topping berdasarkan nama
    selectedToppings.sort((a, b) => a.keterangan.compareTo(b.keterangan));
  }

  /// Open topping bottom sheet
  void openToppingBottomSheet() {
    Get.bottomSheet(
      const ToppingBottomSheet(),
      backgroundColor: Colors.white,
      shape: CustomShape.topRoundedShape,
      isScrollControlled: true,
    );
  }

  /// Tambahkan menu ke keranjang
  void addToCart() {
    if (status.value == 'success' &&
        (selectedLevel.value != null || levels.isEmpty)) {
      CartController.to.add(cartItem);
      Get.offNamedUntil(
        AppRoutes.cartView,
        ModalRoute.withName(AppRoutes.dashboardView),
      );
    }
  }
}
