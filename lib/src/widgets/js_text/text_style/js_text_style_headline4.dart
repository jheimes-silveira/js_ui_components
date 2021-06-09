import 'package:flutter/material.dart';
import 'package:js_ui_components/src/widgets/js_text/text_style/js_text_style.dart';

class JsTextStyleHeadline4 extends JsTextStyle {
  static JsTextStyleHeadline4 themeDefault = JsTextStyleHeadline4();
  JsTextStyleHeadline4({
    double fontSize,
    double letterSpacing,
    FontWeight fontWeight,
    Color color,
  }) : super(
          fontSize: (fontSize == null) ? 34.0 : fontSize,
          letterSpacing: (letterSpacing == null) ? 0.25 : letterSpacing,
          fontWeight: (fontWeight == null) ? FontWeight.normal : fontWeight,
          color: color,
        );
}
