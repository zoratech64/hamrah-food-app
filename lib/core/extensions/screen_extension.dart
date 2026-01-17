import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hamrah_food_app/core/enums/screen_type_enum.dart';

extension ScreenExtensions on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  Orientation get orientation => MediaQuery.of(this).orientation;

  bool get isMobile => deviceType == ScreenType.MOBILE;
  bool get isTablet => deviceType == ScreenType.TABLET;
  bool get isDesktop => deviceType == ScreenType.DESKTOP;

  ScreenType get deviceType {
    if (screenWidth >= 1024) {
      return ScreenType.DESKTOP;
    }
    if (screenWidth >= 600) {
      return ScreenType.TABLET;
    }
    return ScreenType.MOBILE;
  }

  Size get designSize {
    Size size;

    switch (deviceType) {
      case ScreenType.DESKTOP:
        size = const Size(1440, 1024);
        break;
      case ScreenType.TABLET:
        size = const Size(800, 1280);
        break;
      case ScreenType.MOBILE:
        size = const Size(360, 690);
        break;
    }

    if (orientation == Orientation.landscape) {
      size = Size(size.height, size.width);
    }

    return size;
  }

  T? responsiveBasedScreen<T>({T? mobile, T? tablet, T? desktop}) => isDesktop
      ? desktop
      : isTablet
      ? tablet
      : mobile;

  T? responsiveBasedOrientation<T>({T? portrait, T? landscape}) =>
      orientation == Orientation.landscape ? landscape : portrait;

  double width(double width) => width.w;
  double height(double height) => height.h;
  double sp(double fontSize) => fontSize.sp;
}
