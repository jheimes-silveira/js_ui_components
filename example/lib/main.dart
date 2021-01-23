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
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.yellow,
          height: 40,
          disabledColor: Colors.grey[300],
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
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
                style: JsButtonStyle.contained,
                text: "Buttons",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageButton()),
                  );
                },
              ),
              SizedBox(height: 16),
              JsButton(
                style: JsButtonStyle.contained,
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
                style: JsButtonStyle.contained,
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
                style: JsButtonStyle.contained,
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
                style: JsButtonStyle.contained,
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
                style: JsButtonStyle.contained,
                text: "EmptyState",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageEmptyState()),
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
      child: JsButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Proximo",
            ),
          ],
        ),
        loading: true,
        onPressed: () {},
      ),
    );
  }
}
