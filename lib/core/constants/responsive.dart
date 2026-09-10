import 'package:flutter/material.dart';

class Responsive {
  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double widthpercentage(BuildContext context, double percent) {
    return width(context) * percent;
  }

  static double heightpercentage(BuildContext context, double percent) {
    return height(context) * percent;
  }

  static bool isDesktop(BuildContext context) {
    return width(context) >= 1000;
  }

  static bool isTablet(BuildContext context) {
    return width(context) >= 600 && width(context) >= 100;
  }

  static bool isMobile(BuildContext context) {
    return width(context) < 600;
  }
}
