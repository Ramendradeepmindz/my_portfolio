// ignore: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/App/App/Themes/ColorsThemes.dart';

import '../../Data/Values/Fonts.dart';

class FontStyles{
  FontStyles._();

static  final  pageTitle16FontPrimaryColorStylishAveriaLibre = TextStyle(
  color: AppColors. textPrimaryColor,
  fontWeight: FontWeight.w500,
  fontSize: ScreenUtil().setHeight(16),
  fontFamily: Fonts.AveriaLibre,

);
static  final  pageSubTitle16FontPrimaryColorStylishLato = TextStyle(
  color: AppColors. textSecondaryColor,
  fontWeight: FontWeight.w500,
  fontSize: ScreenUtil().setHeight(14),
  fontFamily: Fonts.lato,

);

static  final  buttonStyleLato = TextStyle(
  color: AppColors.whiteColors,
  fontWeight: FontWeight.w400,
  fontSize: ScreenUtil().setHeight(12),
  fontFamily: Fonts.lato,

);



}