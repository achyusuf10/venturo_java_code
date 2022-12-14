import 'package:flutter/material.dart';

class AppConst {
  /// Memastikan class ini tidak bisa diinstansiasi
  AppConst._();

  /// Informasi aplikasi
  static const String appName = 'Java Code App';
  static const Size appDesignSize = Size(428, 926);
  static const String appLink = 'https://promo.trainee.landa.id';
  static const String appDeepLink = 'landa://javacode.app';
  static const String appVersion = '1.0.0';
  static const String firebaseCloudMessagingKey =
      'AAAAmoE_J1M:APA91bGLExxVuzdC26M7w2YzjPODYaEAqIxW4p7aR2tHlDjU1d97zbYdYveBaSDTEjQoF3PFpsHwULp0CwAh6a730-S2dlmdfqJT1BPhIee2veg_ryKsAA1qThSaewDXZPaDeRB4lj9U';

  /// Informasi lokasi
  static const double locationLatitude = -7.9423;
  static const double locationLongitude = 112.6230;
  static const double maximumDistance = 100;

  /// Informasi menu
  static const String defaultMenuPhoto =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/240px-No_image_available.svg.png';
  static const String foodCategory = 'makanan';
  static const String drinkCategory = 'minuman';

  /// Informasi kondisi
  static const String fingerprint = 'fingerprint';
  static const String pin = 'pin';
}
