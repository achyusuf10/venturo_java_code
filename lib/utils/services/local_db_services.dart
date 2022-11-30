import 'package:hive/hive.dart';

import '../../modules/models/user.dart';

/// Local DB Service menggunakan shared preferences
class LocalDBServices {
  /// Memastikan class ini tidak bisa diinstansiasi
  LocalDBServices._();

  static Box<dynamic> _getBox() {
    return Hive.box('box');
  }

  /// Menyimpan data user ke shared preferences
  static void setUser(User user) {
    _getBox().put('user', user);
  }

  /// Mendapatkan data user dari shared preferences
  static User? getUser() {
    User? user = _getBox().get('user');
    if (user == null) return null;
    return user;
  }

  /// Menghapus data user dari shared preferences
  static void clearUser() {
    _getBox().delete('user');
  }

  /// Menyimpan data token ke shared preferences
  static void setToken(String token) {
    _getBox().put('token', token);
  }

  /// Mendapatkan data token dari shared preferences
  static String? getToken() {
    String? token = _getBox().get('token');
    if (token == null || token.isEmpty) return null;
    return token;
  }

  /// Menghapus data token dari shared preferences
  static void clearToken() {
    _getBox().delete('token');
  }

  /// Menyimpan data bahasa ke shared preferences
  static void setLanguage(String language) {
    _getBox().put('language', language);
  }

  /// Mendapatkan data bahasa dari shared preferences
  static String? getLanguage() {
    String? language = _getBox().get('language');
    if (language == null || language.isEmpty) return null;
    return language;
  }

  /// Menghapus data bahasa dari shared preferences
  static void clearLanguage() {
    _getBox().delete('language');
  }
}
