import 'package:flutter/material.dart';
import 'package:js_ui_components/js_ui_components.dart';

class PageListPaginatorView extends StatefulWidget {
  @override
  _PageListPaginatorViewState createState() => _PageListPaginatorViewState();
}

class _PageListPaginatorViewState extends State<PageListPaginatorView> {
  List models;
  bool loading = false;
  int currentItem = 1;

  @override
  void initState() {
    super.initState();

    generateItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JsListPaginatorView"),
      ),
      body: JsListPaginatorView(
        page: Paginator(),
        loading: loading,
        onRefresh: onRefresh,
        itemBuilder: (_, index) {
          final model = models[index];
          return ListTile(
            leading: JsNetworkImage(
              imageUrl: model['image'],
            ),
            title: Text(model['title']),
            subtitle: Text(model['subtitle']),
          );
        },
      ),
    );
  }

  generateItems() {
    setState(() {
      loading = true;
    });
    final map = [];
    for (int i = 0; i < 10; i++) {
      map.add(
        {
          "title": "item ${i + 1}",
          "subtitle": "sub item ${i + 1}",
          "image":
              "https://s3.amazonaws.com/igui-ecologia/wp-content/uploads/2018/04/not-2-2604-1.jpg",
        },
      );
    }

    Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        models = map;
        loading = false;
      });
    });
  }

  onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      models.insert(
        0,
        {
          "title": "Novo item $currentItem",
          "subtitle": "Novo subitem $currentItem",
          "image":
              "https://s3.amazonaws.com/igui-ecologia/wp-content/uploads/2018/04/not-2-2604-1.jpg",
        },
      );
      currentItem++;
    });
  }
}
