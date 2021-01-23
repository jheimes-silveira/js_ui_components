import 'package:flutter/material.dart';
import 'package:js_ui_components/js_ui_components.dart';

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
              JsButton(
                style: JsButtonStyle.contained,
                text: "contained custom Color",
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
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.outlined,
                textColor: Colors.red,
                highlightedBorderColor: Colors.yellow,
              
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
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.gradient,
                child: Center(child: Text("gradient")),
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.gradient,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("gradient"),
                  ],
                ),
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
                textColor: Colors.green,
                color: Colors.red,
                highlightColor: Colors.red,
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
