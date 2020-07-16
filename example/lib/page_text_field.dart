import 'package:flutter/material.dart';
import 'package:js_ui_components/js_ui_components.dart';

class PageTextField extends StatefulWidget {
  @override
  _PageTextFieldState createState() => _PageTextFieldState();
}

class _PageTextFieldState extends State<PageTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: ListView(
        children: [
          JsTextField(
            margin: EdgeInsets.zero,
            titleText: "titulo",
          ),
          JsTextField(
            titleText: "titulo",
          ),
          JsTextFieldPassword(
            titleText: "titulo",
          ),
          JsTextField(
            titleText: "titulo",
          ),
          TextField(),
          TextField(),
        ],
      ),
    );
  }
}
