import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    /// Inisialisasi dashboard controller
    Get.put(DashboardController());
  }
}
