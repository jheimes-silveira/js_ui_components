import 'package:flutter/material.dart';

class JsMessage extends StatelessWidget {
  final Color color;
  final String message;
  final EdgeInsets? padding;

  JsMessage(
    this.message, {
    Color? color,
    this.padding,
  }) : this.color = color ?? Colors.grey;

  JsMessage.info(
    this.message, {
    this.padding,
  }) : this.color = Colors.blue;

  JsMessage.error(
    this.message, {
    this.padding,
  }) : this.color = Colors.red;

  JsMessage.warning(
    this.message, {
    this.padding,
  }) : this.color = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.3),
      ),
      alignment: Alignment.center,
      padding: padding ?? EdgeInsets.all(12),
      child: Text(
        message,
        style: Theme.of(context).textTheme.caption!.copyWith(
              color: color,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
