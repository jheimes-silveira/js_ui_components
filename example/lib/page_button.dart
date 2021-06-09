import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
                type: JsButtonType.elevated,
                text: "elevated",
                onPressed: () {},
                enabled: false,
                loading: true,
                style: ElevatedButton.styleFrom(
                 
                  primary: Colors.red,

                ),
              ),
              JsButton(
                type: JsButtonType.elevated,
                child: Text("contained custom Color"),
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                type: JsButtonType.elevated,
                text: "contained disable",
                enabled: false,
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                type: JsButtonType.elevated,
                loading: true,
                text: "contained disable",
                enabled: false,
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                type: JsButtonType.elevated,
                text: "contained MAX",
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                type: JsButtonType.elevated,
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(38.0)),
                  ),
                ),
                text: "outlined",
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                type: JsButtonType.outlined,
                text: "outlined disable",
                enabled: false,
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  primary: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(38.0)),
                  ),
                ),
              ),
              SizedBox(height: 16),
              JsButton(
                type: JsButtonType.outlined,
                text: "outlined disable",
                enabled: false,
                loading: true,
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                type: JsButtonType.outlined,
                text: "outlined disable",
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                type: JsButtonType.text,
                text: "text",
                onPressed: () {},
              ),
              SizedBox(height: 16),
              JsButton(
                type: JsButtonType.text,
                text: "text",
                enabled: false,
                onPressed: () {},
              ),
              JsButton(
                type: JsButtonType.text,
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
