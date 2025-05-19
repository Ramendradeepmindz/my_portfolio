
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../Data/Values/global_styles.dart';
import '../Modules/Auth/View/authPage_view.dart';
import '../Modules/BottomMenuBar/View/bottomMenuBar_page.dart';

import '../Modules/Splash/View/splash_page.dart';
import 'App_Pages.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesUrl.SPLASH:
        return PageTransition(
            duration: Duration(milliseconds: 500), // Custom transition duration
            curve: Curves.easeInCubic,
            child: SplashScreen(),
            type: PageTransitionType.leftToRight);

      case PagesUrl.BOTTOMMENUBARPAGE:
        return PageTransition(
            duration: Duration(milliseconds: 500), // Custom transition duration
            curve: Curves.easeInOutCirc,
            child: BottomMenuBarPage(),
            type: PageTransitionType.leftToRight);

    
      case PagesUrl.AUTHPAGE:
        return PageTransition(
            duration: Duration(milliseconds: 500), // Custom transition duration
            curve: Curves.easeInOut,
            child: AuthPage(),
            type: PageTransitionType.rightToLeft);

      default:
        return PageTransition(
            child: NoRouteFound(), type: PageTransitionType.fade);
    }
  }
}
