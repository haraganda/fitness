import 'package:flutter/material.dart';

hexStringtoColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
  // ignore: prefer_interpolation_to_compose_strings
  hexColor ="FF" + hexColor;
  }
    return Color(int.parse(hexColor, radix: 16));
}
