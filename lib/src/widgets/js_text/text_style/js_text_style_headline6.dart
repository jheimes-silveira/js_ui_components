import 'package:flutter/material.dart';
import 'package:js_ui_components/src/widgets/js_text/text_style/js_text_style.dart';

class JsTextStyleHeadline6 extends JsTextStyle {
  static JsTextStyleHeadline6 themeDefault = JsTextStyleHeadline6();
  JsTextStyleHeadline6({
    double fontSize,
    double letterSpacing,
    FontWeight fontWeight,
    Color color,
  }) : super(
          fontSize: (fontSize == null) ? 20.0 : fontSize,
          letterSpacing: (letterSpacing == null) ? 0.15 : letterSpacing,
          fontWeight: (fontWeight == null) ? FontWeight.w500 : fontWeight,
          color: color,
        );
}
