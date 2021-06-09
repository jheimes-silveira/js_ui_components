import 'package:flutter/material.dart';
import 'package:js_ui_components/src/widgets/js_text/text_style/js_text_style.dart';

class JsTextStyleHeadline5 extends JsTextStyle {
  static JsTextStyleHeadline5 themeDefault = JsTextStyleHeadline5();
  JsTextStyleHeadline5({
    double fontSize,
    double letterSpacing,
    FontWeight fontWeight,
    Color color,
  }) : super(
          fontSize: (fontSize == null) ? 24.0 : fontSize,
          letterSpacing: (letterSpacing == null) ? 0.0 : letterSpacing,
          fontWeight: (fontWeight == null) ? FontWeight.normal : fontWeight,
          color: color,
        );
}
