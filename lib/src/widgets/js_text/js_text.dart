import 'dart:ui' as ui show TextHeightBehavior;

import 'package:flutter/material.dart';
import 'package:js_ui_components/js_ui_components.dart';
import 'package:js_ui_components/src/widgets/js_text/text_style/js_text_style_caption.dart';

import 'text_style/js_text_style_body1.dart';
import 'text_style/js_text_style_body2.dart';
import 'text_style/js_text_style_headline4.dart';

class JsText extends StatelessWidget {
  final String data;

  final TextStyle style;

  final StrutStyle strutStyle;

  final TextAlign textAlign;

  final TextDirection textDirection;

  final Locale locale;

  final bool softWrap;

  final TextOverflow overflow;

  final double textScaleFactor;

  final int maxLines;

  final String semanticsLabel;

  final TextWidthBasis textWidthBasis;

  final Color textColor;

  final ui.TextHeightBehavior textHeightBehavior;

  JsText(
    this.data, {
    Key key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.textColor,
  }) {
    JsText.body1(
      data,
      key: key,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }

  JsText.body1(
    this.data, {
    Key key,
    TextStyle style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.textColor,
  }) : this.style = _getStyle(
          JsTextStyleBody1.themeDefault,
          style,
          textColor,
        );

  JsText.body2(
    this.data, {
    Key key,
    TextStyle style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.textColor,
  }) : this.style = style == null
            ? JsTextStyleBody2.themeDefault.textStyle.copyWith(
                color: textColor,
              )
            : style;

  JsText.caption(
    this.data, {
    Key key,
    TextStyle style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.textColor,
  }) : this.style = style == null
            ? JsTextStyleCaption.themeDefault.textStyle.copyWith(
                color: textColor,
              )
            : style;

  JsText.headline4(
    this.data, {
    Key key,
    TextStyle style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.textColor,
  }) : this.style = style == null
            ? JsTextStyleHeadline4.themeDefault.textStyle.copyWith(
                color: textColor,
              )
            : style;

  JsText.headline5(
    this.data, {
    Key key,
    TextStyle style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.textColor,
  }) : this.style = _getStyle(
          JsTextStyleHeadline5.themeDefault,
          style,
          textColor,
        );

  JsText.headline6(
    this.data, {
    Key key,
    TextStyle style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.textColor,
  }) : this.style = _getStyle(
          JsTextStyleHeadline6.themeDefault,
          style,
          textColor,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? "",
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }

  static _getStyle(JsTextStyle jsTextStyle, TextStyle style, Color textColor) {
    return style == null
        ? jsTextStyle.textStyle.copyWith(
            color: textColor,
          )
        : style;
  }
}
