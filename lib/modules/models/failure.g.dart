// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Failure _$$_FailureFromJson(Map<String, dynamic> json) => _$_Failure(
      statusCode: json['status_code'] as int? ?? 0,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$_FailureToJson(_$_Failure instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
    };
