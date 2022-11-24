import 'package:get/get.dart';

import '../../modules/features/login/controllers/login_binding.dart';
import '../../modules/features/login/view/ui/login_view.dart';
import '../../modules/features/splash/controllers/splash_binding.dart';
import '../../modules/features/splash/view/ui/splash_view.dart';
import '../routes/app_routes.dart';

class AppPages {
  AppPages._();
  //TODO : Isi GetPage
  static List<GetPage> pages() {
    return [
      /// Otentikasi
      GetPage(
        name: AppRoutes.splashView,
        page: () => const SplashView(),
        binding: SplashBinding(),
      ),
      GetPage(
        name: AppRoutes.loginView,
        page: () => LoginView(),
        binding: LoginBinding(),
      ),
    ];
  }
}
