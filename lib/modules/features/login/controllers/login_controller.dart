import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:venturo_java_code/shared/customs/success_snack_bar.dart';

import '../../../../shared/customs/error_snack_bar.dart';
import '../../../../utils/services/local_db_services.dart';
import '../../../models/user_res.dart';
import '../repositories/login_repository.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find<LoginController>();

  /// Login dengan email dan kata sandi
  Future<void> loginWithEmailAndPassword(String email, String password) async {
    /// Memanggil API repository
    UserRes userRes = await LoginRepository.getUser(email, password);

    switch (userRes.statusCode) {
      case 200:

        /// Mengatur token dan user
        await LocalDBServices.setUser(userRes.user!);
        await LocalDBServices.setToken(userRes.token!);
        Get.showSnackbar(SuccessSnackBar(
          title: 'Success!'.tr,
          message: 'Success Login With Email Password',
        ));

        /// Pergi ke halaman dashboard
        //Get.offAllNamed('/dashboard');
        break;
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

        /// Tampilkan snackbar error tidak diketahui
        Get.showSnackbar(ErrorSnackBar(
          title: 'Something went wrong'.tr,
          message: userRes.message ?? 'Unknown error'.tr,
        ));
    }
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
    UserRes userRes = await LoginRepository.getUserFromGoogle(
        account.displayName ?? '-', account.email);

    if (userRes.statusCode == 200) {
      /// Mengatur token dan user
      await LocalDBServices.setUser(userRes.user!);
      await LocalDBServices.setToken(userRes.token!);

      /// Pergi ke halaman dashboard
      //Get.offAllNamed('/dashboard');

      Get.showSnackbar(SuccessSnackBar(
        title: 'Success!'.tr,
        message: 'Success Login With Google',
      ));
    } else {
      /// Tampilkan snackbar error tidak diketahui
      Get.showSnackbar(ErrorSnackBar(
        title: 'Something went wrong'.tr,
        message: 'Unknown error'.tr,
      ));
    }
  }
}
