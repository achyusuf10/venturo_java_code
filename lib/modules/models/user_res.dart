import 'package:venturo_java_code/modules/models/user.dart';

class UserRes {
  final int statusCode;
  final String? message;
  final User? user;
  final String? token;

  const UserRes({
    required this.statusCode,
    this.message,
    this.user,
    this.token,
  });

  /// From Login Json
  factory UserRes.fromLoginJson(Map<String, dynamic> json) {
    return UserRes(
      statusCode: json['status_code'],
      message: json['message'],
      user: json['status_code'] == 200
          ? User.fromJson(json['data']['user'])
          : null,
      token: json['status_code'] == 200 ? json['data']['token'] : null,
    );
  }

  /// From Login Json
  factory UserRes.fromJson(Map<String, dynamic> json) {
    return UserRes(
      statusCode: json['status_code'],
      message: json['message'],
      user: json['status_code'] == 200 ? User.fromJson(json['data']) : null,
    );
  }
}
