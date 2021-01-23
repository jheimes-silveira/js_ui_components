import 'package:flutter/material.dart';
import 'package:js_ui_components/js_ui_components.dart';

class PageEmptyState extends StatefulWidget {
  @override
  _PageEmptyStateState createState() => _PageEmptyStateState();
}

class _PageEmptyStateState extends State<PageEmptyState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EmptyState"),
      ),
      body: Center(
        child: JsEmptyState(
          title: "Lorem voluptua amet consetetur.",
          subtitle:
              "Labore aliquyam consetetur sed no eos consetetur clita dolore et. Sed dolor est stet lorem et amet, voluptua aliquyam diam.",
          childTop: IconButton(
            icon: Icon(Icons.info),
            iconSize: 70,
            onPressed: () {},
          ),
          childFooter: IconButton(
            icon: Icon(Icons.info),
            iconSize: 70,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
