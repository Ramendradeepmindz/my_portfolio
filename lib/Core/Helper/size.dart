import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeviceUtils {
  static bool isMobile() {
    return ScreenUtil().screenWidth < 600;
  }

  static bool isTablet() {
    final width = ScreenUtil().screenWidth;
    return width >= 600 && width < 1024;
  }

  static bool isDesktop() {
    return ScreenUtil().screenWidth >= 1024;
  }

  static String deviceType() {
    final width = ScreenUtil().screenWidth;
    if (width >= 1024) return 'Desktop';
    if (width >= 600) return 'Tablet';
    return 'Mobile';
  }
}
