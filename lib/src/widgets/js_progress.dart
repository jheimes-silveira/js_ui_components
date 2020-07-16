import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class JsProgress extends StatelessWidget {
  final Color valueColor;
  final bool visible;

  const JsProgress({
    Key key,
    this.valueColor,
    this.visible = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (!visible) {
      return Container();
    }
    return SpinKitThreeBounce(
      color: valueColor ?? Theme.of(context).primaryColor,
      size: 30.0,
    );
  }
}
