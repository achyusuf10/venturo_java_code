import 'package:dio/dio.dart';

import '../../modules/models/failure.dart';

class DioException implements Exception {
  late Failure failure;

  DioException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        failure = Failure(
            statusCode: dioError.response?.statusCode ?? 0,
            message: 'Request to the server was cancelled.');
        break;
      case DioErrorType.connectTimeout:
        failure = Failure(
            statusCode: dioError.response?.statusCode ?? 0,
            message: 'Connection timed out.');
        break;
      case DioErrorType.receiveTimeout:
        failure = Failure(
            statusCode: dioError.response?.statusCode ?? 0,
            message: 'Receiving timeout occurred.');
        break;
      case DioErrorType.sendTimeout:
        failure = Failure(
            statusCode: dioError.response?.statusCode ?? 0,
            message: 'Request send timeout.');
        break;
      case DioErrorType.response:
        String? messageError = _handleMessageError(dioError);
        failure = Failure(
            statusCode: dioError.response?.statusCode ?? 0,
            message: messageError ??
                _handleStatusCode(dioError.response?.statusCode));
        break;
      case DioErrorType.other:
        if (dioError.message.contains('SocketException')) {
          failure = Failure(
              statusCode: dioError.response?.statusCode ?? 0,
              message: 'No Internet.');
          break;
        }
        failure = Failure(
            statusCode: dioError.response?.statusCode ?? 0,
            message: 'Unexpected error occurred.');
        break;
      default:
        failure = Failure(
            statusCode: dioError.response?.statusCode ?? 0,
            message: 'Something went wrong.');
        break;
    }
  }
  String? _handleMessageError(DioError dioError) {
    List<String>? listError = dioError.response?.data['errors'];

    if (listError == null || listError.isEmpty) return null;
    String message = listError.join(" ");

    return message;
  }

  String _handleStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad request.';
      case 401:
        return 'Authentication failed.';
      case 403:
        return 'The authenticated user is not allowed to access the specified API endpoint.';
      case 404:
        return 'The requested resource does not exist.';
      case 405:
        return 'Method not allowed. Please check the Allow header for the allowed HTTP methods.';
      case 415:
        return 'Unsupported media type. The requested content type or version number is invalid.';
      case 422:
        return 'Data validation failed.';
      case 429:
        return 'Too many requests.';
      case 500:
        return 'Internal server error.';
      default:
        return 'Oops something went wrong!';
    }
  }

  @override
  String toString() => failure.message;
}
