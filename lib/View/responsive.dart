import 'package:flutter/material.dart';

class Responsive {
  static bool isLaptop(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return screenWidth >= 769 ? true : false;
  }

  static bool isTab(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return screenWidth > 480 && screenWidth <= 768 ? true : false;
  }

  static bool isMobile(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return screenWidth <= 480 ? true : false;
  }
}