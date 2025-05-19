
import 'package:flutter/material.dart';

import '../../../../Data/Values/constants.dart';
import '../../../routes/App_Pages.dart';

class SplashController extends ChangeNotifier {
  splashTimer() {
    Future.delayed(Duration(seconds: 1), () {
      GlobalKeys.navigationKey.currentState!.pushNamed(PagesUrl.BOTTOMMENUBARPAGE);

      notifyListeners();
    });
  }
}
