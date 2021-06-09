import 'package:flutter/material.dart';
import 'package:js_ui_components/src/widgets/js_text/text_style/js_text_style.dart';

class JsTextStyleBody1 extends JsTextStyle {
  static JsTextStyleBody1 themeDefault = JsTextStyleBody1();
  JsTextStyleBody1({
    double fontSize,
    double letterSpacing,
    FontWeight fontWeight,
    Color color,
  }) : super(
          fontSize: (fontSize == null) ? 16.0 : fontSize,
          letterSpacing: (letterSpacing == null) ? 0.5 : letterSpacing,
          fontWeight: (fontWeight == null) ? FontWeight.normal : fontWeight,
          color: color,
        );
}
