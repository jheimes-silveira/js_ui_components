import 'package:flutter/material.dart';

class JsBorder extends StatelessWidget {
  final double height;
  final double width;
  final double distanceBorder;
  final Widget child;
  final Color color;
  final double opacity;
  final double opacityBorder;

  final bool circle;
  final BorderRadius borderRadius;

  const JsBorder({
    Key key,
    this.color,
    this.circle = true,
    this.child,
    this.borderRadius,
    this.height = 50,
    this.width = 50,
    this.distanceBorder,
    this.opacity,
    this.opacityBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: height - distanceBorder ?? 6,
            width: width - distanceBorder ?? 6,
            decoration: BoxDecoration(
              shape: circle ? BoxShape.circle : BoxShape.rectangle,
              borderRadius: borderRadius,
              color: getColor(context).withOpacity(opacity ?? 0.1),
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              shape: circle ? BoxShape.circle : BoxShape.rectangle,
              borderRadius: borderRadius,
              border: Border.all(
                color: getColor(context).withOpacity(opacityBorder ?? 0.5),
              ),
            ),
          ),
          if (child != null) child,
        ],
      ),
    );
  }

  Color getColor(BuildContext context) {
    if (color == null) {
      return Theme.of(context).primaryColor;
    }
    
    return color;
  }
}
