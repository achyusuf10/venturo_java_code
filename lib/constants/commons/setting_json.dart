import 'package:intl/intl.dart';
import 'package:venturo_java_code/utils/extensions/date_extension.dart';

class SettingJson {
  SettingJson._();
  static DateTime? tglFromJson(String? value) {
    if (value == null) return null;
    try {
      return DateFormat("dd/MM/yyyy").parse(value);
    } catch (e) {
      return DateTime.parse(value);
    }
  }

  static String? tglToJson(DateTime? value) {
    if (value == null) return null;
    return value.toDateString();
  }
}
