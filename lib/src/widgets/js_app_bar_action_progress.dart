import 'package:flutter/material.dart';

class JsAppBarActionProgress extends StatelessWidget {
  final EdgeInsets margin;
  final Color backgroundColor;
  final double strokeWidth;

  const JsAppBarActionProgress({
    Key key,
    this.margin,
    this.backgroundColor,
    this.strokeWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: margin ?? EdgeInsets.only(right: 16),
          child: CircularProgressIndicator(
            backgroundColor: backgroundColor ?? Colors.white,
            strokeWidth: strokeWidth ?? 2,
          ),
        ),
      ],
    );
  }
}
