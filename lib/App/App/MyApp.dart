

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/App/App/routes/App_Pages.dart';
import 'package:my_portfolio/App/App/routes/My_Routes.dart';

import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';




import '../../Core/Services/Provider.dart';
import '../Data/Values/constants.dart';



// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:myProvider,
      child: Consumer(
        builder: (context, value, child) {
          
          return ScreenUtilInit(
            designSize: const Size(360, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            
            builder: (context, child) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                
                builder: (BuildContext context, Widget? child) {
                  return MediaQuery(
                      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                      child: Container(child: child));
                },
                initialRoute: PagesUrl.SPLASH,
                onGenerateRoute: Routes.onGenerateRoute,
                navigatorKey: GlobalKeys.navigationKey,
                supportedLocales: const [
                  Locale('en', 'US'),
                  Locale('hi', 'IN'),
        
                ],
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
              );
            },
          );
        },
      ),
    );
  }

  
}

