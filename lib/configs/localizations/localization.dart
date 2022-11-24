import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/cores/asset_const.dart';
import 'langs/en_us.dart';
import 'langs/id_id.dart';

/// Class localization
class Localization extends Translations {
  /// Mengatur default locale
  static const locale = Locale('id', 'ID');

  /// Mengatur fallback locale
  static const fallbackLocale = Locale('en', 'US');

  /// Daftar bahasa yang didukung
  static const langs = [
    'English',
    'Indonesia',
  ];

  /// Daftar path asset dari bahasa yang didukung
  static const flags = [
    AssetConst.flagEN,
    AssetConst.flagID,
  ];

  /// Daftar locale dari bahasa yang didukung
  static const locales = [
    Locale('en', 'US'),
    Locale('id', 'ID'),
  ];
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': translations_en_US,
        'id_ID': translations_id_ID,
      };

  /// Mengubah locale
  static void changeLocale(String lang) {
    final locale = getLocaleFromLanguage(lang);
    Get.updateLocale(locale);
  }

  /// Mencari bahasa dan mengembalikan locale
  static Locale getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return currentLocale;
  }

  /// Mengembalikan locale saat ini
  static Locale get currentLocale {
    return Get.locale ?? fallbackLocale;
  }

  /// Mengembalikan bahasa saat ini
  static String get currentLanguage {
    return langs.elementAt(locales.indexOf(currentLocale));
  }
}
