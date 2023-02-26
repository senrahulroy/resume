
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_screenutil/flutter_screenutil.dart';

///Get Platform of Current App
bool getIsIOSPlatform() => Platform.isIOS;
bool getIsAndroidPlatform() => Platform.isAndroid;
bool getIsWindowPlatform() => Platform.isWindows;
bool getIsMacPlatform() => Platform.isMacOS;
bool getIsWebPlatform() => kIsWeb;

///Check Dark Mode
bool isDarkMode = false;

/// Hero tag manage
const String profileTag="profile";

///App Padding
double paddingHorizontal = 16.w;

///Setting Screen Util in Web
setHeight(double height) => ScreenUtil().setHeight(height);
setWidth(double width) => ScreenUtil().setWidth(width);
setFontSize(double fontSize) => ScreenUtil().setHeight(fontSize);
