import 'package:flutter/material.dart';

import '../../js_ui_components.dart';

class JsScaffold extends StatelessWidget {
  final Key? key;
  final AppBar? appBar;
  final Widget body;
  final Widget? widgetLoading;
  final Widget? widgetEmptyState;
  final bool? loading;
  final String? emptyState;
  final String? error;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  const JsScaffold({
    this.key,
    this.appBar,
    required this.body,
    this.loading,
    this.emptyState,
    this.error,
    this.widgetLoading,
    this.widgetEmptyState,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.floatingActionButtonLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: appBar,
      body: _buildBody(context),
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  Widget _buildBody(BuildContext context) {
    if (loading != null && loading!) {
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
      return widgetEmptyState ??
          Center(
            child: JsEmptyState(
              subtitle: emptyState,
            ),
          );
    }

    return body;
  }
}
