import 'package:flutter/material.dart';

import '../../../js_ui_components.dart';

class JsButtonOutlined extends StatelessWidget {
  final ButtonStyle style;

  final Widget child;
  final String text;
  final Function onPressed;
  final Function onLongPress;
  final EdgeInsets padding;
  final bool enabled;
  final bool loading;

  JsButtonOutlined({
    this.child,
    this.onPressed,
    this.padding,
    this.text,
    this.enabled = true,
    this.loading,
    this.style,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    Function onPressed =
        (enabled == null || enabled == false || loading == true)
            ? null
            : this.onPressed;

    final onLongPress = (enabled == null || enabled == false || loading == true)
        ? null
        : this.onLongPress;

    return OutlinedButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      child: _getChild(context),
      style: style ?? Theme.of(context).outlinedButtonTheme.style,
    );
  }

  Widget _getChild(BuildContext context) {
    if (loading != null && loading)
      return Center(
        child: JsProgress(
          valueColor: Theme.of(context).indicatorColor,
        ),
      );

    if (child != null) return child;

    if (text != null)
      return Container(
        alignment: Alignment.center,
        child: Text(text),
      );

    return null;
  }
}
