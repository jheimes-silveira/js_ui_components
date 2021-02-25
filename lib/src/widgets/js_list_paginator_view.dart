import 'package:flutter/material.dart';
import 'package:js_ui_components/src/model/paginator.dart';

import 'js_list_view.dart';
import 'js_progress.dart';

class JsListPaginatorView<T> extends StatelessWidget {
  final int itemCount;
  final Widget emptyState;
  final Widget loadingWidget;
  final Widget headerWidget;
  final bool loading;
  final bool shrinkWrap;
  final EdgeInsetsGeometry padding;
  final ScrollPhysics physics;
  final IndexedWidgetBuilder itemBuilder;
  final Function onHaveMorePage;
  final Paginator<T> page;
  final bool enablePullDown;
  final bool reverse;
  final Function onRefresh;

  const JsListPaginatorView({
    Key key,
    @required this.itemBuilder,
    this.emptyState,
    this.itemCount,
    this.loading,
    this.padding,
    this.physics,
    this.shrinkWrap = false,
    this.loadingWidget,
    this.page,
    this.onHaveMorePage,
    this.enablePullDown,
    this.onRefresh,
    this.reverse = false,
    this.headerWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int itemCount = _getItemCount();

    if (loading != null && loading) {
      return loadingWidget ?? Center(child: JsProgress());
    }

    if ((itemCount == null || itemCount == 0 || page == null) &&
        emptyState != null) {
      return emptyState;
    }

    return JsListView(
      emptyState: emptyState,
      loading: loading,
      loadingWidget: loadingWidget,
      models: page,
      reverse: reverse,
      padding: padding,
      itemCount: itemCount,
      enablePullDown: enablePullDown,
      onRefresh: onRefresh,
      itemBuilder: (_, index) {
        if (itemCount - 1 == index &&
            (page.currentPage < page.total / page.perPage) &&
            onHaveMorePage != null) {
          onHaveMorePage();

          return Padding(
            padding: const EdgeInsets.all(
              16,
            ),
            child: JsProgress(),
          );
        }
        if (headerWidget != null && index == 0) {
          return headerWidget;
        }

        return itemBuilder(_, index -(headerWidget == null ? 0 : 1));
      },
    );
  }

  int _getItemCount() {
    int countWithHeaderWidget = 0;

    if (itemCount != null) {
      return itemCount;
    }

    if (headerWidget != null) {
      countWithHeaderWidget = 1;
    }

    if (page?.data?.isEmpty == null) {
      return 0 + countWithHeaderWidget;
    }

    if (page.currentPage < page.total / page.perPage) {
      return page.data.length + 1 + countWithHeaderWidget;
    }

    return page.data.length + countWithHeaderWidget;
  }
}
