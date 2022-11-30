import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:venturo_java_code/configs/routes/app_routes.dart';
import 'package:venturo_java_code/shared/customs/success_snack_bar.dart';

import '../../../../shared/customs/error_snack_bar.dart';
import '../../../../utils/services/local_db_services.dart';
import '../repositories/login_repository.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find<LoginController>();

  /// Login dengan email dan kata sandi
  Future<void> loginWithEmailAndPassword(String email, String password) async {
    /// Memanggil API repository
    var loginRes = await LoginRepository.getUser(email, password);

    loginRes.fold((l) {
      switch (l.statusCode) {
        case 422:

          /// Tampilkan snackbar jika username atau password salah
          Get.showSnackbar(ErrorSnackBar(
            title: 'Something went wrong'.tr,
            message: 'Email or password is incorrect'.tr,
          ));
          break;
        case 204:

          /// Tampilkan snackbar jika username atau password salah
          Get.showSnackbar(ErrorSnackBar(
            title: 'Something went wrong'.tr,
            message: 'Email or password is incorrect'.tr,
          ));
          break;
        default:
          Get.showSnackbar(ErrorSnackBar(
            title: 'Something went wrong'.tr,
            message: 'Unknown error'.tr,
          ));
      }
    }, (r) async {
      LocalDBServices.setUser(r['user']);
      LocalDBServices.setToken(r['token']);
      Get.toNamed(AppRoutes.dashboardView);
      Get.showSnackbar(SuccessSnackBar(
        title: 'Success!'.tr,
        message: 'Success Login With Email Password',
      ));
    });
  }

  Future<void> loginWithGoogle() async {
    /// Singleton GoogleSignIn
    final GoogleSignIn googleSignIn = GoogleSignIn();

    /// Sign out dari akun saat ini (apabila ada) dan sign in
    await googleSignIn.signOut();

    /// Request login dengan akun google
    GoogleSignInAccount? account = await googleSignIn.signIn();

    /// Jika akun yang disediakan null
    if (account == null) return;

    /// Memanggil API repository
    var loginRes = await LoginRepository.getUserFromGoogle(
        account.displayName ?? '-', account.email);

    loginRes.fold((l) {
      switch (l.statusCode) {
        case 422:

          /// Tampilkan snackbar jika username atau password salah
          Get.showSnackbar(ErrorSnackBar(
            title: 'Something went wrong'.tr,
            message: 'Email or password is incorrect'.tr,
          ));
          break;
        case 204:

          /// Tampilkan snackbar jika username atau password salah
          Get.showSnackbar(ErrorSnackBar(
            title: 'Something went wrong'.tr,
            message: 'Email or password is incorrect'.tr,
          ));
          break;
        default:
          Get.showSnackbar(ErrorSnackBar(
            title: 'Something went wrong'.tr,
            message: 'Unknown error'.tr,
          ));
      }
    }, (r) async {
      LocalDBServices.setUser(r['user']);
      LocalDBServices.setToken(r['token']);
      Get.toNamed(AppRoutes.dashboardView);
      Get.showSnackbar(SuccessSnackBar(
        title: 'Success!'.tr,
        message: 'Success Login With Google',
      ));
    });
  }
}
