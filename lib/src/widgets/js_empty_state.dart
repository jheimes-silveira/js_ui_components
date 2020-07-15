library js_empty_state;

import 'package:flutter/material.dart';

class JsEmptyState extends StatelessWidget {
  final String title;
  final String subtitle;

  const JsEmptyState({
    @required this.title,
    @required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildTitle(context),
          _buildSubtitle(context),
        ],
      ),
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    return Text(
      subtitle,
      style: Theme.of(context).textTheme.bodyText1,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildTitle(BuildContext context) {
    if (title == null) {
      return Container();
    }

    return Padding(
      padding: EdgeInsets.only(
        bottom: 16.0 * 2.0,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
      ),
    );
  }
}
