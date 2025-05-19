
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../App/App/Modules/Auth/Controller/AuthController.dart';
import '../../App/App/Modules/BottomMenuBar/Controller/bottom_menuBar_controller.dart';

import '../../App/App/Modules/Splash/Controller/splash_controller.dart';

List<SingleChildWidget> get myProvider {
  return [
    ChangeNotifierProvider(create: (context) => SplashController()),
    ChangeNotifierProvider(create: (context) => BottomMenuBarController()),
 
    ChangeNotifierProvider(create: (context) => AuthControllers()),

  ];
}
