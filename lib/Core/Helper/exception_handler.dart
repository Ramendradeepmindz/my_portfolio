import 'package:dio/dio.dart';


import '../../App/Data/Models/error_response.dart';
import '../../App/Data/Values/strings.dart';

class APIException implements Exception {
  final String message;
  final Map<String, dynamic>? errors;
  final int? code;

  APIException({
    required this.message,
    this.errors,
    this.code,
  });
}

class ExceptionHandler {
  ExceptionHandler._privateConstructor();

  static APIException handleError(Exception error) {
    if (error is DioException) {
  
      switch (error.type) {
        case DioExceptionType.connectionError:
        
          return APIException(message: ErrorMessages.noInternet);
        case DioExceptionType.connectionTimeout:
          return APIException(message: ErrorMessages.connectionTimeout);
        case DioExceptionType.badResponse:
          return APIException(
            message: ErrorResponse.fromJson(error.response?.data).message,
            errors: ErrorResponse.fromJson(error.response?.data).errors,
            code: ErrorResponse.fromJson(error.response?.data).code,
          );
        default:
          return APIException(message: ErrorMessages.noInternet);
      }
    } else {
      return APIException(message: ErrorMessages.noInternet);
    }
  }
}


