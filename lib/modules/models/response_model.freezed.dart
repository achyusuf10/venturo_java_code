// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResponseModel<T> {
  @JsonKey(defaultValue: 0, name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, name: 'status_code')
  set statusCode(int value) => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  set message(String value) => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;
  set data(T value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponseModelCopyWith<T, ResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<T, $Res> {
  factory $ResponseModelCopyWith(
          ResponseModel<T> value, $Res Function(ResponseModel<T>) then) =
      _$ResponseModelCopyWithImpl<T, $Res, ResponseModel<T>>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0, name: 'status_code') int statusCode,
      @JsonKey(defaultValue: '') String message,
      T data});
}

/// @nodoc
class _$ResponseModelCopyWithImpl<T, $Res, $Val extends ResponseModel<T>>
    implements $ResponseModelCopyWith<T, $Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseModelCopyWith<T, $Res>
    implements $ResponseModelCopyWith<T, $Res> {
  factory _$$_ResponseModelCopyWith(
          _$_ResponseModel<T> value, $Res Function(_$_ResponseModel<T>) then) =
      __$$_ResponseModelCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0, name: 'status_code') int statusCode,
      @JsonKey(defaultValue: '') String message,
      T data});
}

/// @nodoc
class __$$_ResponseModelCopyWithImpl<T, $Res>
    extends _$ResponseModelCopyWithImpl<T, $Res, _$_ResponseModel<T>>
    implements _$$_ResponseModelCopyWith<T, $Res> {
  __$$_ResponseModelCopyWithImpl(
      _$_ResponseModel<T> _value, $Res Function(_$_ResponseModel<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$_ResponseModel<T>(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ResponseModel<T> implements _ResponseModel<T> {
  _$_ResponseModel(
      {@JsonKey(defaultValue: 0, name: 'status_code') this.statusCode = 0,
      @JsonKey(defaultValue: '') this.message = '',
      required this.data});

  @override
  @JsonKey(defaultValue: 0, name: 'status_code')
  int statusCode;
  @override
  @JsonKey(defaultValue: '')
  String message;
  @override
  T data;

  @override
  String toString() {
    return 'ResponseModel<$T>(statusCode: $statusCode, message: $message, data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseModelCopyWith<T, _$_ResponseModel<T>> get copyWith =>
      __$$_ResponseModelCopyWithImpl<T, _$_ResponseModel<T>>(this, _$identity);
}

abstract class _ResponseModel<T> implements ResponseModel<T> {
  factory _ResponseModel(
      {@JsonKey(defaultValue: 0, name: 'status_code') int statusCode,
      @JsonKey(defaultValue: '') String message,
      required T data}) = _$_ResponseModel<T>;

  @override
  @JsonKey(defaultValue: 0, name: 'status_code')
  int get statusCode;
  @JsonKey(defaultValue: 0, name: 'status_code')
  set statusCode(int value);
  @override
  @JsonKey(defaultValue: '')
  String get message;
  @JsonKey(defaultValue: '')
  set message(String value);
  @override
  T get data;
  set data(T value);
  @override
  @JsonKey(ignore: true)
  _$$_ResponseModelCopyWith<T, _$_ResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
