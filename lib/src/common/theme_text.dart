import 'package:flutter/material.dart';

TextSpan buildCustomTextSpan(
    String text, double fontSize, FontWeight fontWeight, Color color) {
  return TextSpan(
    text: text,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}
