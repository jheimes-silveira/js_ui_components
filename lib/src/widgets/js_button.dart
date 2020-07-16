library js_button;

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
  final ButtonThemeData theme;

  JsButton({
    this.style = JsButtonStyle.contained,
    this.text = "",
    this.onPressed,
    this.enabled = true,
    this.loading = false,
    this.theme,
    this.widgetLoading,
    this.colorLoading,
    this.child,
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
        onPressed: onPressed,
      );
    }

    if (style == JsButtonStyle.outlined) {
      return OutlineButton(
        child: child,
        onPressed: onPressed,
      );
    }

    if (style == JsButtonStyle.text) {
      return FlatButton(
        child: child,
        onPressed: onPressed,
      );
    }

    if (style == JsButtonStyle.gradient) {
      BorderRadius border = BorderRadius.circular(0);

      if (getTheme(context).shape is RoundedRectangleBorder) {
        border =
            (getTheme(context).shape as RoundedRectangleBorder).borderRadius;
      }

      return Container(
        height: getTheme(context).height,
        decoration: BoxDecoration(
          borderRadius: border,
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).accentColor,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: FlatButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          child: Ink(
            padding: getTheme(context).padding,
            child: child,
          ),
        ),
      );
    }

    return MaterialButton(
      child: Text(text),
      onPressed: onPressed,
    );
  }

  ButtonThemeData getTheme(BuildContext context) {
    if (theme != null) {
      return theme;
    }

    return Theme.of(context).buttonTheme;
  }
}

enum JsButtonStyle { text, outlined, contained, gradient }
