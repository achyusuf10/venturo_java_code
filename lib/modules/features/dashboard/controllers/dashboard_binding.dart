import 'package:get/get.dart';
import 'package:venturo_java_code/modules/features/cart/controllers/cart_controller.dart';
import 'package:venturo_java_code/modules/features/profile/controllers/profile_controller.dart';

import '../../home/controllers/home_controller.dart';
import '../../order/controllers/order_controller.dart';
import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    /// Inisialisasi dashboard controller
    Get.put(DashboardController());

    /// Inisialisasi cart controller
    Get.lazyPut(() => CartController());

    /// Inisialisasi home, order, profile
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => OrderController());
    Get.lazyPut(() => ProfileController());
  }
}
