import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume/ui/utils/const.dart';

class Constant {
  double infiniteSize = double.infinity;

  String fontFamily = "Poppins";

  FontWeight fontWeightThin = FontWeight.w100;
  FontWeight fontWeightExtraLight = FontWeight.w200;
  FontWeight fontWeightLight = FontWeight.w300;
  FontWeight fontWeightRegular = FontWeight.w400;
  FontWeight fontWeightMedium = FontWeight.w500;
  FontWeight fontWeightSemiBold = FontWeight.w600;
  FontWeight fontWeightBold = FontWeight.w700;
  FontWeight fontWeightExtraBold = FontWeight.w800;

  Color  colorPrimaryOrange = const Color(0xffFFB400);

  Color colorScaffoldBG = const Color(0xffF5F6F9);
  Color colorPrimary = const Color(0xff4854a6);
  Color colorLightBlue = const Color(0xffC2E3F6);
  Color colorMainFont = const Color(0xff282828);
  Color colorGreen = const Color(0xff35867D);
  Color colorPrimaryLight = const Color(0xff9DADBD);
  Color colorBlack = const Color(0xff000000);
  Color colorBlackWhite = const Color(0xff111111);

  Color colorWhite = const Color(0xffFFFFFF);
  Color colorCream = const Color(0xffF1F1F1);
  Color colorGreyTab = const Color(0xff9F9F9F);
  Color colorTextGrey = const Color(0xff979797);
  Color colorDarkGrey = const Color(0xff4E4E4E);
  Color colorLightGrey = const Color(0xff979797);
  Color colorLightGrey2 = const Color(0xffAFAFAF);
  Color colorDarkRed = const Color(0xffFF3B3B);
  Color colorHintText = const Color(0xffB8B8B8);
  Color colorTransparent = const Color(0x00000000);
  Color colorGreyCardBg = const Color(0xffDCDCDC);
  Color colorDarkBlue = const Color(0xff1D0330);
  Color colorRed = const Color(0xffEA5455);
  Color colorYellow = const Color(0xffFEBF0F);
  Color colorGrey = const Color(0xffE8E8EC);
  Color colorGreyShadow = const Color(0xff707070);
  Color colorBlue = const Color(0xff007AFF);
  Color colorDarkExtraRed = const Color(0xffDB2B18);
  Color colorContainerBorder = const Color(0xffDBDBE5);

  Color colorTextMainFontByTheme() => isDarkMode ? colorWhite : colorBlack;
}

class TextStyles {

  static TextStyle txtLargeBold(Color color) => TextStyle(
    color: color,
    fontSize: 16.sp,
    fontWeight: Constant().fontWeightBold,
    fontFamily: Constant().fontFamily,
  );


}