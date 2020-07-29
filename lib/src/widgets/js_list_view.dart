import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'js_progress.dart';

class JsListView extends StatelessWidget {
  final _refreshController = RefreshController(initialRefresh: false);
  final int itemCount;
  final Widget emptyState;
  final Widget loadingWidget;
  final bool loading;
  final bool shrinkWrap;
  final EdgeInsetsGeometry padding;
  final ScrollPhysics physics;
  final IndexedWidgetBuilder itemBuilder;
  final dynamic models;
  final bool enablePullDown;
  final Function onRefresh;
  final bool reverse;

  JsListView({
    Key key,
    @required this.itemBuilder,
    this.emptyState,
    this.itemCount,
    this.models,
    this.loading,
    this.padding,
    this.physics,
    this.shrinkWrap = false,
    this.loadingWidget,
    this.enablePullDown,
    this.onRefresh,
    this.reverse = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int itemCount = _getItemCount();

    if (loading != null && loading) {
      return loadingWidget ?? Center(child: JsProgress());
    }

    if ((itemCount == null || itemCount == 0) && emptyState != null) {
      return emptyState;
    }

    return SmartRefresher(
      enablePullDown: _getEnablePullDown(),
      controller: _refreshController,
      onRefresh: () async {
        _refreshController.resetNoData();
        // monitor network fetch
        if (this.onRefresh != null) {
          await this.onRefresh();
        }

        _refreshController.refreshCompleted();
      },
      child: ListView.builder(
        physics: physics,
        reverse: reverse,
        shrinkWrap: shrinkWrap,
        padding: padding,
        itemCount: itemCount,
        itemBuilder: itemBuilder,
      ),
    );
  }

  int _getItemCount() {
    if (itemCount != null) {
      return itemCount;
    }

    if (models is List) {
      return models.length;
    }

    return 0;
  }

  bool _getEnablePullDown() {
    if (enablePullDown != null) {
      return enablePullDown;
    }

    if (this.onRefresh != null) {
      return true;
    }

    return false;
  }
}
