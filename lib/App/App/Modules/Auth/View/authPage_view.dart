
import 'package:flutter/material.dart';

import '../../../../../Core/Enums/base_view.dart';
import '../../../../Data/Values/images.dart';
import '../Controller/AuthController.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    return BaseView<AuthControllers>(
      onModelReady: (models) {},
      builder: (BuildContext context, controllers, Widget? child) {
        return Scaffold(
body: Container(

  decoration: BoxDecoration(

    image: DecorationImage(image: AssetImage(
      ImagesThemes.login),
      filterQuality: FilterQuality.high,
      fit: BoxFit.fill
    
    )
  ),


),

        );
      },
    );
  }
}
