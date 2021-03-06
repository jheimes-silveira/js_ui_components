import 'package:flutter/material.dart';
import 'package:js_ui_components/js_ui_components.dart';

class PageCircularAvatar extends StatefulWidget {
  @override
  _PageCircularAvatarState createState() => _PageCircularAvatarState();
}

class _PageCircularAvatarState extends State<PageCircularAvatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circular Avatar"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                JsNetworkImage(
                  imageUrl:
                      "https://s3.amazonaws.com/igui-ecologia/wp-content/uploads/2018/04/not-2-2604-1.jpg",
                  circular: false,
                ),
                JsNetworkImage(
                  imageUrl:
                      "https://s3.amazonaws.com/igui-ecologia/wp-content/uploads/2018/04/not-2-2604-1.jpg",
                ),
                JsNetworkImage(
                  imageUrl:
                      "https://s3.amazonaws.com/igui-ecologia/wp-contet/uploads/2018/04/not-2-2604-1.jpg",
                ),
                JsNetworkImage(
                  height: 50,
                  width: 50,
                  imageUrl:
                      "https://s3.amazonaws.com/igui-ecologia/wp-contet/uploads/2018/04/not-2-2604-1.jpg",
                  errorWidget: JsBorder(
                    color: Colors.amberAccent,
                    child: Icon(Icons.ac_unit),
                  ),
                ),
                JsNetworkImage(
                  height: 50,
                  width: 50,
                  errorWidget: JsBorder(
                    color: Colors.amberAccent,
                    child: Icon(Icons.ac_unit),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: JsNetworkImage(
              imageUrl:
                  "https://s3.amazonaws.com/igui-ecologia/wp-content/uploads/2018/04/not-2-2604-1.jpg",
            ),
            onTap: () {},
            title: Text("titulo 1"),
            subtitle: Text("titulo 1"),
          ),
          Divider(),
          ListTile(
            leading: JsNetworkImage(
              imageUrl:
                  "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png",
            ),
            onTap: () {},
            title: Text("titulo 1"),
            subtitle: Text("titulo 1"),
          ),
        ],
      ),
    );
  }
}
