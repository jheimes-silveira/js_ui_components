import 'package:flutter/material.dart';
import 'package:js_ui_components/src/widgets/js_button.dart';

class PageButton extends StatefulWidget {
  @override
  _PageButtonState createState() => _PageButtonState();
}

class _PageButtonState extends State<PageButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              JsButton(
                style: JsButtonStyle.contained,
                text: "contained",
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.contained,
                text: "contained disable",
                enabled: false,
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.contained,
                loading: true,
                text: "contained disable",
                enabled: false,
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.contained,
                text: "contained MAX",
                mainAxisSize: MainAxisSize.max,
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.outlined,
                text: "outlined",
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.outlined,
                text: "outlined disable",
                enabled: false,
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.outlined,
                text: "outlined disable",
                enabled: false,
                loading: true,
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.outlined,
                text: "outlined disable",
                mainAxisSize: MainAxisSize.max,
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.gradient,
                text: "gradient",
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.gradient,
                text: "gradient disable",
                enabled: false,
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.gradient,
                text: "gradient disable",
                loading: true,
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.text,
                text: "text",
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.text,
                text: "text",
                enabled: false,
                onPressed: () {},
              ),
              JsButton(
                style: JsButtonStyle.text,
                loading: true,
                text: "text",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
