import 'package:flutter/material.dart';
import 'package:js_ui_components/js_ui_components.dart';

import 'js_list_view.dart';
import 'js_progress.dart';

class JsListObservablePaginatorView<T> extends StatelessWidget {
  final int? itemCount;
  final Widget? emptyState;
  final Widget? loadingWidget;
  final Widget? headerWidget;
  final bool? loading;
  final bool shrinkWrap;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;
  final IndexedWidgetBuilder itemBuilder;
  final Function? onHaveMorePage;
  final ObservablePaginator<T>? paginator;
  final bool? enablePullDown;
  final bool reverse;
  final Function? onRefresh;

  const JsListObservablePaginatorView({
    Key? key,
    required this.itemBuilder,
    this.emptyState,
    this.itemCount,
    this.loading,
    this.padding,
    this.physics,
    this.shrinkWrap = false,
    this.loadingWidget,
    this.paginator,
    this.onHaveMorePage,
    this.enablePullDown,
    this.onRefresh,
    this.reverse = false,
    this.headerWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? itemCount = _getItemCount();

    if (loading != null && loading!) {
      return loadingWidget ?? Center(child: JsProgress());
    }

    if ((itemCount == null || itemCount == 0 || paginator == null) &&
        emptyState != null) {
      return emptyState!;
    }

    return JsListView(
      emptyState: emptyState,
      loading: loading,
      loadingWidget: loadingWidget,
      models: paginator,
      reverse: reverse,
      padding: padding,
      itemCount: itemCount,
      enablePullDown: enablePullDown,
      onRefresh: onRefresh,
      header: headerWidget,
      itemBuilder: (_, index) {
        int currentPage = paginator?.currentPage ?? 0;
        int total = paginator?.total ?? 0;
        int perPage = paginator?.perPage ?? 20;

        final haveMorePage = (currentPage < total / perPage);

        if (itemCount! - 1 == index && haveMorePage && onHaveMorePage != null) {
          onHaveMorePage!();

          return Padding(
            padding: const EdgeInsets.all(
              16,
            ),
            child: JsProgress(),
          );
        }

        return itemBuilder(_, index);
      },
    );
  }

  int? _getItemCount() {
    int countWithHeaderWidget = 0;

    if (itemCount != null) {
      return itemCount;
    }

    if (headerWidget != null) {
      countWithHeaderWidget = 1;
    }

    if (paginator?.data?.isEmpty == null) {
      return 0 + countWithHeaderWidget;
    }

    if (paginator!.currentPage! < paginator!.total / paginator!.perPage) {
      return paginator!.data!.length + 1 + countWithHeaderWidget;
    }

    return paginator!.data!.length + countWithHeaderWidget;
  }
}
