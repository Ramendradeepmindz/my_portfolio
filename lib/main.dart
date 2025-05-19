
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



import 'App/App/MyApp.dart';

void main()async {


    WidgetsFlutterBinding.ensureInitialized();




  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark,
  ));
   
  runApp( MyApp());
   
  
}



