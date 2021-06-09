import 'package:flutter/material.dart';
import 'package:js_ui_components/src/widgets/js_text/text_style/js_text_style.dart';

class JsTextStyleCaption extends JsTextStyle {
  static JsTextStyleCaption themeDefault = JsTextStyleCaption();
  JsTextStyleCaption({
    double fontSize,
    double letterSpacing,
    FontWeight fontWeight,
    Color color,
  }) : super(
          fontSize: (fontSize == null) ? 12.0 : fontSize,
          letterSpacing: (letterSpacing == null) ? 0.4 : letterSpacing,
          fontWeight: (fontWeight == null) ? FontWeight.normal : fontWeight,
          color: color,
        );
}
