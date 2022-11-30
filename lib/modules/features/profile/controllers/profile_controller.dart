import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:venturo_java_code/utils/extensions/dartz_extension.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:venturo_java_code/utils/extensions/date_extension.dart';
import '../../../../configs/localizations/localization.dart';
import '../../../../configs/routes/app_routes.dart';
import '../../../../configs/themes/colors.dart';
import '../../../../shared/styles/shapes.dart';
import '../../../../shared/widgets/image_picker_dialog.dart';
import '../../../../utils/services/local_db_services.dart';
import '../../../models/user.dart';
import '../repositories/profile_repositories.dart';
import '../view/components/email_bottom_sheet.dart';
import '../view/components/language_bottom_sheet.dart';
import '../view/components/logout_dialog.dart';
import '../view/components/name_bottom_sheet.dart';
import '../view/components/phone_bottom_sheet.dart';
import '../view/components/pin_dialog.dart';
import 'package:image_cropper/image_cropper.dart';

class ProfileController extends GetxController {
  static ProfileController get to => Get.find();

  @override
  void onInit() {
    super.onInit();

    /// Load user data
    final userData = LocalDBServices.getUser();
    if (userData != null) user.value = userData;
    loadData();

    /// Load device info
    DeviceInfoPlugin().androidInfo.then((value) {
      deviceInfo.value = '${value.manufacturer} ${value.model}';
    });
  }

  /// Data user
  Rx<User> user = Rx<User>(User.dummy());
  Rx<String> currentLanguage = RxString(Localization.currentLanguage);
  RxString deviceInfo = RxString('');

  /// Load user data
  Future<void> loadData() async {
    /// Fetch data user dari API
    var userRes = await ProfileRepository.get();
    if (userRes.isLeft()) return;
    user.value = userRes.asRight();
    LocalDBServices.setUser(userRes.asRight());
  }

  /// Logout user
  Future<void> logout() async {
    final result = await Get.defaultDialog<bool>(
      title: '',
      titleStyle: const TextStyle(fontSize: 0),
      content: const LogoutDialog(),
    );

    /// Jika User memilih tidak
    if (result == null) return;
    if (result == false) return;

    LocalDBServices.clearToken();
    LocalDBServices.clearUser();
    Get.offAllNamed(AppRoutes.loginView);
  }

  /// Update user data
  Future<void> updateUser(
      {String? nama,
      DateTime? tglLahir,
      String? telepon,
      String? email,
      String? pin}) async {
    Map<String, String> data = {};

    if (nama != null) data['nama'] = nama;
    if (tglLahir != null) data['tgl_lahir'] = tglLahir.toDateString();
    if (telepon != null) data['telepon'] = telepon;
    if (email != null) data['email'] = email;
    if (pin != null) data['pin'] = pin;

    var userRes = await ProfileRepository.update(data);
    if (userRes.isLeft()) return;
    user.value = userRes.asRight();
    LocalDBServices.setUser(userRes.asRight());
  }

  /// Update nama dialog
  Future<void> openUpdateNameDialog() async {
    String? nama = await Get.bottomSheet(
      NameBottomSheet(nama: user.value.nama),
      backgroundColor: Colors.white,
      shape: CustomShape.topRoundedShape,
      isScrollControlled: true,
    );
    if (nama == null) return;
    if (nama.isEmpty) return;
    await updateUser(nama: nama);
  }

  /// Update tanggal lahir dialog
  Future<void> openUpdateBirthDateDialog() async {
    DateTime? tglLahir = await showDatePicker(
      context: Get.context!,
      initialDate: user.value.tglLahir ?? DateTime(DateTime.now().year - 21),
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime.now(),
    );

    if (tglLahir != null) {
      await updateUser(tglLahir: tglLahir);
    }
  }

  /// Update phone number dialog
  Future<void> openUpdatePhoneDialog() async {
    String? telepon = await Get.bottomSheet(
      PhoneBottomSheet(telepon: user.value.telepon ?? ''),
      backgroundColor: Colors.white,
      shape: CustomShape.topRoundedShape,
      isScrollControlled: true,
    );

    if (telepon != null && telepon.isNotEmpty) {
      await updateUser(telepon: telepon);
    }
  }

  /// Update email dialog
  Future<void> openUpdateEmailDialog() async {
    String? email = await Get.bottomSheet(
      EmailBottomSheet(email: user.value.email),
      backgroundColor: Colors.white,
      shape: CustomShape.topRoundedShape,
      isScrollControlled: true,
    );

    if (email != null && email.isNotEmpty) {
      await updateUser(email: email);
    }
  }

  Future<void> openUpdatePINDialog() async {
    String? pin = await Get.defaultDialog(
      title: '',
      titleStyle: const TextStyle(fontSize: 0),
      content: const PinDialog(),
    );

    if (pin != null && pin.isNotEmpty) {
      await updateUser(pin: pin);
    }
  }

  /// Language dialog
  Future<void> openLanguageDialog() async {
    String? language = await Get.bottomSheet(
      const LanguageBottomSheet(),
      backgroundColor: Colors.white,
      shape: CustomShape.topRoundedShape,
      isScrollControlled: true,
    );

    if (language != null) {
      Localization.changeLocale(language);
      LocalDBServices.setLanguage(language);
      currentLanguage.value = language;
    }
  }

  /// Update photo
  Future<void> openUpdatePhotoDialog() async {
    /// Buka dialog pilih sumber gambar
    ImageSource? imageSource = await Get.defaultDialog(
      title: '',
      titleStyle: const TextStyle(fontSize: 0),
      content: const ImagePickerDialog(),
    );

    /// Jika pilih sumber gambar, buka dialog ambil gambar sesuai sumber
    if (imageSource == null) return;
    var image = await ImagePicker().pickImage(
      source: imageSource,
      maxWidth: 300,
      maxHeight: 300,
      imageQuality: 75,
    );

    /// Jika gambar diambil, buka dialog crop gambar
    if (image == null) return;
    final CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatioPresets: [CropAspectRatioPreset.square],
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Cropper'.tr,
          toolbarColor: AppColor.blueColor,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.square,
          lockAspectRatio: true,
        ),
      ],
    );

    /// Jika gambar dicrop, encode gambar ke base64
    if (croppedFile == null) return;
    final base64Image = base64.encode(await croppedFile.readAsBytes());

    /// Simpan gambar melalui API
    var userRes = await ProfileRepository.updatePhoto(base64Image);

    /// Update data user
    if (userRes.isLeft()) return;
    user.value = userRes.asRight();
    LocalDBServices.setUser(user.value);
  }

  /// Update KTP
  Future<void> openVerifyIDDialog() async {
    /// Buka dialog input sumber gambar
    ImageSource? imageSource = await Get.defaultDialog(
      title: '',
      titleStyle: const TextStyle(fontSize: 0),
      content: const ImagePickerDialog(),
    );

    /// Jika pilih sumber gambar, buka dialog ambil gambar sesuai sumber
    if (imageSource == null) return;
    var image = await ImagePicker().pickImage(
      source: imageSource,
      maxWidth: 1500,
      maxHeight: 1500,
      imageQuality: 90,
    );

    /// Jika gambar diambil, encode gambar ke base64
    if (image == null) return;
    final base64Image = base64.encode(await image.readAsBytes());

    /// Simpan gambar melalui API
    var userRes = await ProfileRepository.updateKTP(base64Image);

    /// Update data user
    if (userRes.isLeft()) return;
    user.value = userRes.asRight();
    LocalDBServices.setUser(user.value);
  }
}
