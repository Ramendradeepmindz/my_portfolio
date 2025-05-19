// import 'dart:convert';

// import 'package:dio/dio.dart';



// import '../../../../../Core/Helper/exception_handler.dart';
// import '../../../../Data/Models/default_response.dart';
// import '../../../../Data/Models/response.dart';
// import '../../../../Data/Network/ApiService.dart';


// class UserRepository {
//   final ApiService _apiService;

//   UserRepository({String? token}) : _apiService = ApiService(token: token);

//   // Login method



//    Future<RepoResponse<DefaultResponse>> login(String username, String password) async {




//   final response =  await _apiService.postRequest(
//       endpoint: "",
//     );
//     print("responsseofLIst${jsonEncode(response)}");

//     return response is APIException
//         ? RepoResponse(error: response.data)
//         : RepoResponse(data: DefaultResponse.fromJson(response.data));



//   }

//   // Resend OTP method
//   Future<Response> resendOTP(String username) async {

//     return await _apiService.getRequest('/auth/resend-otp', );


//   }

//   // General Get method (For other API endpoints)
//   Future<Response> getData(String endpoint) async {
//     return await _apiService.getRequest(endpoint);
//   }

//   // Delete user data (Example: Deleting an account)
//   Future<Response> deleteAccount(int userId) async {
//     return await _apiService.deleteRequest('/users/$userId');
//   }

//   // Update token when user logs in successfully
//   void updateToken(String token) {
//     _apiService.updateToken(token);
//   }

//   // Clear token when logging out
//   void clearToken() {
//     _apiService.removeToken();
//   }
// }
