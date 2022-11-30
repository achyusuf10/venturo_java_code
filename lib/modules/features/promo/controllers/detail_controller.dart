import 'package:get/get.dart';

import '../../../models/promo.dart';
import '../repositories/promo_repository.dart';

class DetailPromoController extends GetxController {
  static DetailPromoController get to => Get.find();

  /// Data promo
  RxString status = RxString('loading');
  Rxn<Promo> promo = Rxn<Promo>();

  @override
  void onInit() {
    super.onInit();

    if (Get.arguments is Promo) {
      /// Jika argument adalah promo, tampilkan
      status.value = 'success';
      promo.value = Get.arguments as Promo;
    } else if (Get.arguments is int) {
      /// Jika argument adalah id promo, ambil dari API
      setFromId(Get.arguments as int);
    }
  }

  /// Set data promo dari id
  Future<void> setFromId(int id) async {
    /// Mengambil data promo dari API
    final promoRes = await PromoRepository.getFromId(id);

    promoRes.fold((l) {
      status.value = 'error';
    }, (r) {
      /// Jika status sukses, tampilkan
      status.value = 'success';
      promo.value = r;
    });
  }
}
