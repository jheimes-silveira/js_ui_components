import 'package:flutter/material.dart';

import '../../js_ui_components.dart';

class JsScaffold extends StatelessWidget {
  final AppBar appBar;
  final Widget body;
  final Widget widgetLoading;
  final Widget widgetEmptyState;
  final bool loading;
  final String emptyState;
  final String error;

  const JsScaffold({
    Key key,
    this.appBar,
    @required this.body,
    this.loading,
    this.emptyState,
    this.error,
    this.widgetLoading,
    this.widgetEmptyState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (loading != null && loading) {
      return JsProgress();
    }

    if (error != null) {
      return Center(
        child: JsEmptyState(
          subtitle: error,
        ),
      );
    }

    if (emptyState != null) {
      return Center(
        child: JsEmptyState(
          subtitle: emptyState,
        ),
      );
    }

    return body;
  }
}
