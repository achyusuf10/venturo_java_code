import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@unfreezed
@JsonSerializable(genericArgumentFactories: true)
class ResponseModel<T> with _$ResponseModel<T> {
  factory ResponseModel({
    @JsonKey(defaultValue: 0, name: 'status_code') @Default(0) int statusCode,
    @JsonKey(defaultValue: '') @Default('') String message,
    required T data,
  }) = _ResponseModel;

  factory ResponseModel.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$ResponseModelFromJson<T>(json, fromJsonT);
  }
}
