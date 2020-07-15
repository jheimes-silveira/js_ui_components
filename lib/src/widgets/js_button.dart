library js_button;

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class JsButton extends StatelessWidget {
  final JsButtonStyle style;
  final String text;
  final Function onPressed;
  final Color color;
  final Color textColor;

  final double height;
  final bool allCap;
  final bool enabled;
  final bool loading;
  final IconData iconRight;
  final IconData iconLeft;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final BorderRadius borderRadius;
  final RoundedRectangleBorder shape;
  final Gradient gradient;
  final EdgeInsets padding;
  final TextStyle textStyle;

  JsButton({
    this.style = JsButtonStyle.contained,
    this.text = "",
    this.onPressed,
    this.iconRight,
    this.iconLeft,
    this.enabled = true,
    this.allCap = true,
    this.color,
    this.mainAxisSize: MainAxisSize.min,
    this.crossAxisAlignment: CrossAxisAlignment.center,
    this.mainAxisAlignment: MainAxisAlignment.center,
    this.loading = false,
    this.borderRadius,
    this.height = 50,
    this.textColor,
    this.shape,
    this.gradient,
    this.padding,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      decoration: BoxDecoration(
        color: _getColor(context),
        gradient: _getGradient(context),
        borderRadius: _getBorderRadius(),
      ),
      child: FlatButton(
        disabledColor: _getColor(context)?.withOpacity(0.3),
        shape: _getShape(context),
        padding: _getPadding(),
        onPressed: (enabled && !loading) ? this.onPressed : null,
        child: Row(
          mainAxisSize: this.mainAxisSize,
          crossAxisAlignment: this.crossAxisAlignment,
          mainAxisAlignment: this.mainAxisAlignment,
          children: <Widget>[
            _getIconLeft(),
            _getChildButton(context),
            _getIconRight(),
          ],
        ),
      ),
    );
  }

  Color _getColor(BuildContext context) {
    Color color;

    if (this.color != null) {
      color = this.color;
    } else if (this.style == JsButtonStyle.contained) {
      color = Theme.of(context).primaryColor;
    } else if (this.style == JsButtonStyle.gradient) {
      color = Theme.of(context).primaryColor;
    } else if (this.style == JsButtonStyle.outlined) {
      return null;
    } else if (this.style == JsButtonStyle.text) {
      return null;
    }

    return enabled ? color : color.withOpacity(0.5);
  }

  Color _getTextColor(BuildContext context) {
    if (this.textColor != null) {
      return this.textColor;
    }

    Color color;
    if (this.style == JsButtonStyle.contained ||
        this.style == JsButtonStyle.gradient) {
      color = Colors.white;
    }

    if (color == null) {
      color = Theme.of(context).primaryColor;
    }
    if (onPressed == null || !enabled) {
      color = color.withOpacity(0.7);
    }

    return color;
  }

  RoundedRectangleBorder _getShape(BuildContext context) {
    if (this.shape != null) {
      return this.shape;
    }
    Color color =
        this.color != null ? this.color : Theme.of(context).primaryColor;

    if (onPressed == null || !enabled) {
      color = color.withOpacity(0.3);
    }

    if (this.style == JsButtonStyle.outlined) {
      return RoundedRectangleBorder(
        borderRadius: _getBorderRadius(),
        side: BorderSide(
          color: color,
          width: 1,
          style: BorderStyle.solid,
        ),
      );
    }

    return RoundedRectangleBorder(
      borderRadius: _getBorderRadius(),
    );
  }

  Widget _getChildButton(BuildContext context) {
    Color color = _getTextColor(context);

    if (style == JsButtonStyle.contained) {
      color = _getColor(context);
    }
    if (style == JsButtonStyle.gradient) {
      color = _getColor(context);
    }

    if (this.loading) {
      return SpinKitThreeBounce(
        color: color,
        size: 25.0,
      );
    }

    return Text(
      this.allCap ? this.text.toUpperCase() : this.text,
      textAlign: TextAlign.center,
      style: _getTextStyle(context),
    );
  }

  EdgeInsets _getPadding() {
    if (this.padding == null) {
      return EdgeInsets.only(
        top: 8,
        bottom: 8,
        left: 16,
        right: 16,
      );
    }

    return this.padding;
  }

  Widget _getIconRight() {
    if (this.iconRight == null) return Container();

    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Icon(
        this.iconRight,
        size: 20,
      ),
    );
  }

  Widget _getIconLeft() {
    if (this.iconLeft == null) return Container();

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Icon(
        this.iconLeft,
        size: 20,
      ),
    );
  }

  BorderRadius _getBorderRadius() {
    if (this.borderRadius == null) {
      return BorderRadius.circular(10);
    }
    return this.borderRadius;
  }

  _getGradient(BuildContext context) {
    if (gradient != null) {
      return gradient;
    }

    if (style == JsButtonStyle.gradient) {
      return LinearGradient(
        colors: [
          (enabled && !loading)
              ? Theme.of(context).accentColor
              : Theme.of(context).accentColor.withOpacity(0.5),
          (enabled && !loading)
              ? Theme.of(context).primaryColor
              : Theme.of(context).primaryColor.withOpacity(0.5),
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      );
    }

    return gradient;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (textStyle != null) {
      return textStyle;
    }

    return Theme.of(context).textTheme.bodyText1.copyWith(
          color: _getTextColor(context),
        );
  }
}

enum JsButtonStyle { text, outlined, contained, gradient }
