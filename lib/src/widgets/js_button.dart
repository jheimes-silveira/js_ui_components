import 'package:flutter/material.dart';
import 'package:js_ui_components/src/widgets/js_progress.dart';

class JsButton extends StatelessWidget {
  final JsButtonStyle style;
  final String text;
  final Widget widgetLoading;
  final Color colorLoading;
  final Widget child;
  final Function onPressed;
  final bool enabled;
  final bool loading;
  final ButtonTextTheme textTheme;
  final Gradient gradient;
  final BorderSide borderSide;
  final ShapeBorder shape;
  final Color textColor;
  final Color color;
  final Color focusColor;
  final Color splashColor;
  final Color disabledColor;
  final Color disabledTextColor;
  final Color highlightedBorderColor;
  final Color disabledBorderColor;
  final Color highlightColor;
  final Color hoverColor;

  JsButton({
    this.style = JsButtonStyle.contained,
    this.text = "",
    this.onPressed,
    this.enabled = true,
    this.loading = false,
    this.textTheme,
    this.widgetLoading,
    this.colorLoading,
    this.child,
    this.gradient,
    this.textColor,
    this.color,
    this.focusColor,
    this.splashColor,
    this.disabledColor,
    this.disabledTextColor,
    this.highlightedBorderColor,
    this.highlightColor,
    this.borderSide,
    this.hoverColor,
    this.disabledBorderColor,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    Widget child = this.child ?? Text("$text");
    Function onPressed = enabled && !loading ? this.onPressed : null;

    if (loading) {
      child = widgetLoading ??
          JsProgress(
            valueColor: colorLoading ?? Theme.of(context).indicatorColor,
          );
    }

    if (style == JsButtonStyle.contained) {
      return RaisedButton(
        shape: this.shape,
        child: child,
        textTheme: getTextTheme(context),
        textColor: textColor,
        color: color,
        focusColor: focusColor,
        splashColor: splashColor,
        disabledColor: disabledColor,
        disabledTextColor: disabledTextColor,
        onPressed: onPressed,
        hoverColor: hoverColor,
      );
    }

    if (style == JsButtonStyle.outlined) {
      return OutlineButton(
        textTheme: getTextTheme(context),
        child: child,
        shape: this.shape,
        textColor: textColor,
        color: color,
        focusColor: focusColor,
        splashColor: splashColor,
        hoverColor: hoverColor,
        highlightedBorderColor: highlightedBorderColor,
        disabledBorderColor: disabledBorderColor,
        disabledTextColor: disabledTextColor,
        highlightColor: highlightColor,
        onPressed: onPressed,
      );
    }

    if (style == JsButtonStyle.text) {
      return OutlineButton(
        child: child,
        shape: this.shape,
        textTheme: getTextTheme(context),
        textColor: textColor,
        color: color,
        highlightColor: highlightColor ?? Colors.transparent,
        highlightedBorderColor: highlightedBorderColor ?? Colors.transparent,
        focusColor: focusColor,
        borderSide: borderSide ??
            BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
        disabledBorderColor: disabledBorderColor ?? Colors.transparent,
        splashColor: splashColor,
        disabledTextColor: disabledTextColor,
        onPressed: onPressed,
      );
    }

    BorderRadius border = BorderRadius.circular(0);
    final shape = this.shape ?? Theme.of(context).buttonTheme.shape;

    if (shape is RoundedRectangleBorder) {
      border = (Theme.of(context).buttonTheme.shape as RoundedRectangleBorder)
          .borderRadius;
    }

    return OutlineButton(
      textColor: textColor ?? Colors.white,
      textTheme: getTextTheme(context),
      splashColor: splashColor,
      highlightColor: highlightColor ?? Colors.transparent,
      highlightedBorderColor: highlightedBorderColor ?? Colors.transparent,
      focusColor: focusColor,
      borderSide: borderSide ??
          BorderSide(
            width: 0,
            color: Colors.transparent,
          ),
      disabledBorderColor: disabledBorderColor ?? Colors.transparent,
      disabledTextColor: disabledTextColor,
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: Ink(
        color: color,
        height: Theme.of(context).buttonTheme.height,
        decoration: BoxDecoration(
          borderRadius: border,
          color: onPressed == null
              ? Theme.of(context).buttonTheme.getDisabledFillColor(
                    RaisedButton(onPressed: () {}),
                  )
              : null,
          gradient: _getColorGradient(onPressed, context),
        ),
        padding: Theme.of(context).buttonTheme.padding,
        child: child,
      ),
    );
  }

  ButtonTextTheme getTextTheme(BuildContext context, [MaterialButton button]) {
    if (textTheme != null) {
      return textTheme;
    }

    if (button == null) {
      return Theme.of(context).buttonTheme.textTheme;
    }

    return Theme.of(context).buttonTheme.getTextTheme(button);
  }

  _getColorGradient(Function onPressed, BuildContext context) {
    if (onPressed == null) {
      return null;
    }
    if (gradient != null) {
      return gradient;
    }

    return LinearGradient(
      colors: [
        Theme.of(context).primaryColor,
        Theme.of(context).accentColor,
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );
  }
}

enum JsButtonStyle { text, outlined, contained, gradient }
