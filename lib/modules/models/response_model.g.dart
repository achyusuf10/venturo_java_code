// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseModel<T> _$ResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ResponseModel<T>(
      statusCode: json['status_code'] as int? ?? 0,
      message: json['message'] as String? ?? '',
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$ResponseModelToJson<T>(
  ResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': toJsonT(instance.data),
    };
