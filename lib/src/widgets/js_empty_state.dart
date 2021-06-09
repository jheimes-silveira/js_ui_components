import 'package:flutter/material.dart';

class JsEmptyState extends StatelessWidget {
  final String title;
  final String subtitle;
  final EdgeInsets padding;
  final Widget childFooter;
  final Widget childTop;

  const JsEmptyState({
    @required this.subtitle,
    this.title,
    this.padding,
    this.childTop,
    this.childFooter,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          EdgeInsets.all(
            16,
          ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          if (childTop != null)
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: childTop,
            ),
          _buildTitle(context),
          _buildSubtitle(context),
          if (childFooter != null)
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: childFooter,
            ),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    if (title == null) {
      return Container();
    }

    return Padding(
      padding: EdgeInsets.only(
        bottom: 32,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    return Text(
      subtitle,
      style: Theme.of(context).textTheme.subtitle1,
      textAlign: TextAlign.center,
    );
  }
}
