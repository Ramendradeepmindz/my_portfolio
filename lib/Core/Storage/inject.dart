
// import 'package:dio/dio.dart';
// import 'package:flutter_simple_dependency_injection/injector.dart';






// class Injection {
//   static Injector? injector;

//   static Dio? _dio;

//   static SharedPref _sharedPrefs = new SharedPref();
//   static HiveLocalDB box=new HiveLocalDB();

//  static Future initInjection() async {
//     _sharedPrefs== new SharedPref();
//     injector = Injector();

//     await _sharedPrefs.init();
//     await box.init();
//     // if (_sharedPrefs.user != null) {
//     //   await setupDioInterceptor();
//     // }

//     _dio = new Dio();

//     // await box.init();

//     injector?.map<Dio>((i) => _dio!, isSingleton: true);

//     injector?.map<SharedPref>((i) => _sharedPrefs, isSingleton: true);
//     injector?.map<HiveLocalDB>((i) => box, isSingleton: true);
//   }



  
// }


