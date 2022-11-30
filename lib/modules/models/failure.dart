import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';
part 'failure.g.dart';

@freezed
class Failure with _$Failure {
  factory Failure({
    @JsonKey(name: 'status_code') @Default(0) int statusCode,
    @Default('') String message,
  }) = _Failure;

  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json);

  factory Failure.customFromJson(Map<String, dynamic> json) {
    List<dynamic>? errors = json['errors'];
    return Failure(
        statusCode: json['status_code'],
        message: errors == null ? '' : errors.join(" "));
  }
}
