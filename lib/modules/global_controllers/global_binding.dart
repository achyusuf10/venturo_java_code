import 'package:get/get.dart';

import 'global_controller.dart';

class GlobalBinding extends Bindings {
  @override
  void dependencies() {
    /// Inisialisasi global controller
    Get.put(GlobalController(), permanent: true);
  }
}
