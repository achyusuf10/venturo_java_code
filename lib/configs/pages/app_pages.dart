import 'package:get/get.dart';
import 'package:venturo_java_code/modules/features/dashboard/controllers/dashboard_binding.dart';
import 'package:venturo_java_code/modules/features/dashboard/view/dashboard_view.dart';
import 'package:venturo_java_code/modules/features/menu/controllers/detail_menu_binding.dart';
import 'package:venturo_java_code/modules/features/menu/view/ui/detail_menu_view.dart';
import 'package:venturo_java_code/modules/features/promo/controllers/detail_promo_binding.dart';
import 'package:venturo_java_code/modules/features/promo/view/ui/detail_promo_view.dart';
import 'package:venturo_java_code/shared/widgets/network_error_view.dart';

import '../../modules/features/cart/view/ui/cart_view.dart';
import '../../modules/features/cart/view/ui/choose_voucher_view.dart';
import '../../modules/features/cart/view/ui/detail_voucher_view.dart';
import '../../modules/features/login/controllers/login_binding.dart';
import '../../modules/features/login/view/ui/login_view.dart';
import '../../modules/features/order/controllers/detail_order_binding.dart';
import '../../modules/features/order/view/ui/detail_order_view.dart';
import '../../modules/features/splash/controllers/splash_binding.dart';
import '../../modules/features/splash/view/ui/splash_view.dart';
import '../routes/app_routes.dart';

class AppPages {
  AppPages._();

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

      /// Network Error
      GetPage(
        name: AppRoutes.networkErrorView,
        page: () => const NetworkErrorView(),
      ),

      /// Home
      GetPage(
        name: AppRoutes.dashboardView,
        page: () => const DashboardView(),
        binding: DashboardBinding(),
      ),

      /// Detail Promo & Detail Menu
      GetPage(
        name: AppRoutes.detailPromoView,
        page: () => const DetailPromoView(),
        binding: DetailPromoBinding(),
      ),
      GetPage(
        name: AppRoutes.detailMenuView,
        page: () => const DetailMenuView(),
        binding: DetailMenuBinding(),
      ),

      /// Cart
      GetPage(
        name: AppRoutes.cartView,
        page: () => const CartView(),
      ),
      GetPage(
        name: AppRoutes.chooseVoucherView,
        page: () => const ChooseVoucherView(),
      ),
      GetPage(
        name: AppRoutes.detailVoucherView,
        page: () => const DetailVoucherView(),
      ),

      /// Order
      GetPage(
        name: AppRoutes.detailOrderView,
        page: () => const DetailOrderView(),
        binding: DetailOrderBinding(),
      ),
    ];
  }
}
