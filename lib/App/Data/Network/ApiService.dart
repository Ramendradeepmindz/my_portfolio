import 'package:dio/dio.dart';


import '../Models/error_response.dart';
import '../Values/env.dart';

class ApiService {
  final Dio _dio;

  // Initialize Dio with or without token
  ApiService({String? token})
      : _dio = Dio(BaseOptions(
          baseUrl: Env.baseURL,
          headers: {
            'Content-Type': 'application/json',
            if (token != null) 'Authorization': 'Bearer $token',
          },
        ));

  // GET request
  Future<Response> getRequest(String endpoint) async {
    try {
      return await _dio.get(endpoint);
    } on DioException catch (e) {
      throw ErrorResponse(errors: e.response!.data, message: '${e.message}');
    }
  }

  // POST request
  Future<Response> postRequest(
       {endpoint, data}) async {
    try {
      return await _dio.post(endpoint, data: data);
    } on DioException catch (e) {
      throw ErrorResponse(errors: e.response!.data, message: '${e.message}');
    }
  }

  // DELETE request
  Future<Response> deleteRequest(String endpoint) async {
    try {
      return await _dio.delete(endpoint);
    } on DioException catch (e) {
      throw ErrorResponse(errors: e.response!.data, message: '${e.message}');
    }
  }

  // Update Token
  void updateToken(String token) {
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  // Remove Token
  void removeToken() {
    _dio.options.headers.remove('Authorization');
  }
}
