import 'package:flutter/material.dart';

import 'js_button_elevated.dart';
import 'js_button_outlined.dart';
import 'js_button_text.dart';

enum JsButtonType { text, outlined, elevated }

class JsButton extends StatelessWidget {
  final ButtonStyle? style;
  final JsButtonType type;
  final Widget? child;
  final String? text;
  final Function? onPressed;
  final Function? onLongPress;
  final bool enabled;
  final bool? loading;

  JsButton({
    this.type = JsButtonType.elevated,
    this.child,
    this.onPressed,
    this.text,
    this.enabled = true,
    this.loading,
    this.style,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    if (type == JsButtonType.outlined)
      return JsButtonOutlined(
        enabled: enabled,
        loading: loading,
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: child,
        text: text,
        style: style ?? Theme.of(context).outlinedButtonTheme.style,
      );

    if (type == JsButtonType.text)
      return JsButtonText(
        enabled: enabled,
        loading: loading,
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: child,
        text: text,
        style: style ?? Theme.of(context).textButtonTheme.style,
      );
    return JsButtonElevated(
      enabled: enabled,
      loading: loading,
      onPressed: onPressed,
      onLongPress: onLongPress,
      child: child,
      text: text,
      style: style ?? Theme.of(context).elevatedButtonTheme.style,
    );
  }
}
