import 'dart:ui';

import 'package:flutter/cupertino.dart';

class ColorConstants {
  static Color CircleColor = hexToColor("#EEEEEE"); //background: #1A8411;
  static Color ButtonColor = hexToColor("#0DBC53");
  static Color BackBColor = hexToColor("#525252");
  static Color CategoriesColor = hexToColor("#888cef;").withOpacity(0.1);
  static Color starColor = hexToColor("#FE543D");
  // static Color GuesttxtColor = hexToColor("#615D5D");

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
