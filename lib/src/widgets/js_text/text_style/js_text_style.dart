import 'package:flutter/material.dart';

abstract class JsTextStyle {
  final double fontSize;
  final double letterSpacing;
  final FontWeight fontWeight;
  final Color color;
  JsTextStyle({
    double fontSize,
    double letterSpacing,
    FontWeight fontWeight,
    this.color,
  })  : this.fontSize = (fontSize == null) ? 12 : fontSize,
        this.letterSpacing = (letterSpacing == null) ? 0.4 : letterSpacing,
        this.fontWeight = (fontWeight == null) ? FontWeight.normal : fontWeight;

  TextStyle get textStyle => TextStyle(
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight,
        color: color,
      );
}
