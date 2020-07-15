import 'package:flutter/material.dart';
import 'package:js_ui_components/src/widgets/js_text_field.dart';
import 'package:js_ui_components/src/widgets/js_text_field_password.dart';

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
