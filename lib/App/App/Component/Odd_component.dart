

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Themes/FontsThems.dart';

// ignore: must_be_immutable
class OddWidget extends StatelessWidget {
  String title,sunTitle,icons;
     OddWidget({super.key, required this.title,required this.sunTitle,required this.icons});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          "${icons}",
          height: ScreenUtil().setHeight(250),
          width: ScreenUtil().setWidth(300),
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "$title",
          style: FontStyles.pageTitle16FontPrimaryColorStylishAveriaLibre,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Lorem Ipsum is simply dummy text of the printing and of the printing and",
          style: FontStyles.pageSubTitle16FontPrimaryColorStylishLato,
          textAlign: TextAlign.center,
        ),
            ],
    );
  }
}
