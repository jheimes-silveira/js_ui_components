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
  final Color textColor;
  final Color color;
  final Color focusColor;
  final Color splashColor;
  final Color disabledColor;
  final Color disabledTextColor;
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
        child: child,
        textTheme: getTextTheme(context),
        textColor: textColor,
        color: color,
        focusColor: focusColor,
        splashColor: splashColor,
        disabledColor: disabledColor,
        disabledTextColor: disabledTextColor,
        onPressed: onPressed,
      );
    }

    if (style == JsButtonStyle.outlined) {
      return OutlineButton(
        textTheme: getTextTheme(context),
        child: child,
        textColor: textColor,
        color: color,
        focusColor: focusColor,
        splashColor: splashColor,
        disabledBorderColor: disabledTextColor,
        disabledTextColor: disabledTextColor,
        onPressed: onPressed,
      );
    }

    if (style == JsButtonStyle.text) {
      return FlatButton(
        child: child,
        textTheme: getTextTheme(context),
        textColor: textColor,
        color: color,
        focusColor: focusColor,
        splashColor: splashColor,
        disabledColor: disabledColor,
        disabledTextColor: disabledTextColor,
        onPressed: onPressed,
      );
    }

    if (style == JsButtonStyle.gradient) {
      BorderRadius border = BorderRadius.circular(0);

      if (Theme.of(context).buttonTheme.shape is RoundedRectangleBorder) {
        border = (Theme.of(context).buttonTheme.shape as RoundedRectangleBorder)
            .borderRadius;
      }

      return Container(
        child: FlatButton(
          textColor: textColor ?? Colors.white,
          onPressed: onPressed,
          padding: EdgeInsets.zero,
          child: Ink(
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
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                child,
              ],
            ),
          ),
        ),
      );
    }

    return MaterialButton(
      child: Text(text),
      onPressed: onPressed,
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
