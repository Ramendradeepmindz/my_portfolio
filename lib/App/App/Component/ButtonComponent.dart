
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/App/App/Themes/ColorsThemes.dart';

import '../Themes/FontsThems.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  
  double height=0,width=0;
  String title;
  VoidCallback onTap;
   Button({super.key,required this.title,required this.height,required this.width,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: ScreenUtil().setWidth(width), // Adjust width to match your design
        height: ScreenUtil().setHeight(height), // Adjust height to match your design
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.buttonLinerColorsA, AppColors.buttonLinerColorsB],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(50), // To achieve the oval shape
        ),
        child: Center(
          child: Text(
            '$title',
            style:FontStyles.buttonStyleLato
          ),
        ),
      ),
    );
  }
}