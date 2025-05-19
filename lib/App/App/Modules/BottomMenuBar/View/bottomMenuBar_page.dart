// ignore: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/App/App/Themes/FontsThems.dart';
import 'package:my_portfolio/App/Data/Values/images.dart';

import '../../../../../Core/Enums/base_view.dart';

import '../../../Themes/ColorsThemes.dart';
import '../Controller/bottom_menuBar_controller.dart';

class BottomMenuBarPage extends StatelessWidget {
  const BottomMenuBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<BottomMenuBarController>(
      onModelReady: (models) {},
      builder: (context, controller, Widget? child) {


        print("*****************DeviceType.mobile${DeviceType.mobile}***********");
        return Scaffold(
          backgroundColor: AppColors.primaryColors,
          body: Column(
            children: [
            
            DeviceType.mobile ==DeviceType.mobile? AnimatedContainer(
      duration: Durations.medium1,
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColors,
        borderRadius: BorderRadius.circular(2.w),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FaIcon(FontAwesomeIcons.bars,
            
            color: AppColors.buttonLinerColorsA,
            size: 20.w,
            ),
            Image.asset(
              ImagesThemes.logoWithWhiteColorCir,
              width: 100.w,
              height: 40.h,
              color: AppColors.buttonLinerColorsA,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
            
          ],
        ),
      ),
    ): webNavBar(),
            
            ],
          ),
        );
      },
    );
  }

  Widget webNavBar() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
    child: AnimatedContainer(
      duration: Durations.medium1,
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColors,
        borderRadius: BorderRadius.circular(2.w),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              ImagesThemes.logoWithWhiteColorCir,
              width: 40.w,
              color: AppColors.buttonLinerColorsA,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _navItem("Home", () {
                  print("Clicked Home");
                  // Navigator.pushNamed(context, '/home');
                }),
                SizedBox(width: 15.w),
                _navItem("About Us", () {
                  print("Clicked About Us");
                  // Navigator.pushNamed(context, '/about');
                }),
                SizedBox(width: 15.w),
                _navItem("Contact Us", () {
                  print("Clicked Contact Us");
                  // Navigator.pushNamed(context, '/contact');
                }),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _navItem(String title, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: Text(
      title,
      style: FontStyles.pageSubTitle16FontPrimaryColorStylishLato,
    ),
  );
}

}
