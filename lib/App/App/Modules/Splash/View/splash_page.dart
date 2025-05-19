
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../Core/Enums/base_view.dart';
import '../../../../Data/Values/images.dart';
import '../../../Themes/ColorsThemes.dart';
import '../Controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashController>(
      onModelReady: (models) {
        models.splashTimer();
      },
      builder: (context, controller, Widget? child) {
        return Scaffold(
          body: Container(
            color: AppColors.primaryColors,
            child: Center(
                child: Image.asset(
              ImagesThemes.logoWithWhiteColorCir,
              filterQuality: FilterQuality.high,
              fit: BoxFit.contain,
            )),
          ),
        );
      },
    );
  }
}
