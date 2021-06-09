import 'package:example/page_button.dart';
import 'package:example/page_empty_state.dart';
import 'package:example/page_list_paginator_view.dart';
import 'package:example/page_list_view.dart';
import 'package:example/page_text_field.dart';
import 'package:flutter/material.dart';
import 'package:js_ui_components/js_ui_components.dart';

import 'page_circular_avatar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(primary: Colors.purple),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            elevation: 3,
            textStyle: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.yellow,
          height: 40,
          disabledColor: Colors.black,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
        ),
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        accentColor: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              JsButton(
                type: JsButtonType.elevated,
                text: "Buttons",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageButton()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
              SizedBox(height: 16),
              JsButton(
                type: JsButtonType.elevated,
                text: "TextField",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageTextField()),
                  );
                },
              ),
              SizedBox(height: 16),
              JsButton(
                type: JsButtonType.elevated,
                text: "Circular avatar",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageCircularAvatar()),
                  );
                },
              ),
              SizedBox(height: 16),
              JsButton(
                type: JsButtonType.elevated,
                text: "Listview",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageListView()),
                  );
                },
              ),
              SizedBox(height: 16),
              JsButton(
                type: JsButtonType.elevated,
                text: "ListPaginatorview",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageListPaginatorView()),
                  );
                },
              ),
              SizedBox(height: 16),
              JsButton(
                type: JsButtonType.elevated,
                text: "EmptyState",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageEmptyState()),
                  );
                },
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
      floatingActionButton: _buildFooter(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          JsButton(
            child: Text(
              "Proximo",
            ),
            loading: false,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
