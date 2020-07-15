library js_network_image;

import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class JsNetworkImage extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;
  final Widget child;
  final Widget errorWidget;
  final bool circle;
  final bool selected;
  final bool iconCheck;
  final Color selectedColor;
  final bool identifierWhenNotSelected;
  final Color splashColor;
  final bool splash;
  final BorderRadius borderRadius;

  const JsNetworkImage({
    this.height = 40.0,
    this.width = 40.0,
    this.identifierWhenNotSelected = false,
    this.circle = true,
    this.imageUrl,
    this.selected = false,
    this.splashColor,
    this.splash = false,
    this.child,
    this.errorWidget,
    this.selectedColor,
    this.iconCheck = true,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _buildChild(),
        _buildSplashBackground(context),
        _buildIdentifierCircle(context),
      ],
    );
  }

  Container _buildChild() {
    return Container(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(circle ? 80 : 0),
        child: child ??
            CachedNetworkImage(
              imageUrl: "$imageUrl",
              fit: BoxFit.fill,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Shimmer.fromColors(
                baseColor: Colors.grey[300],
                highlightColor: Colors.grey[100],
                child: Container(
                  width: width,
                  height: width,
                  color: Colors.grey,
                ),
              ),
              errorWidget: (context, url, error) =>
                  errorWidget ??
                  Container(
                    color: Colors.grey.withOpacity(0.3),
                    child: Container(
                      child: Image(
                        image: AssetImage("assets/images/logo_write.png"),
                      ),
                    ),
                  ),
            ),
      ),
    );
  }

  Widget _buildSplashBackground(BuildContext context) {
    if (selected && splash) {
      return Container(
        width: width,
        height: width,
        color: splashColor == null
            ? Theme.of(context).primaryColor.withOpacity(0.1)
            : splashColor.withOpacity(0.1),
      );
    }

    return Container();
  }

  Widget _buildIdentifierCircle(BuildContext context) {
    if (selected) {
      return Positioned(
        top: height / 20,
        left: width / 20,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selectedColor ?? Theme.of(context).primaryColor,
          ),
          width: width / 3,
          height: height / 3,
          child: iconCheck
              ? Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: width / 4,
                  ),
                )
              : Container(),
        ),
      );
    }

    if (identifierWhenNotSelected) {
      return Positioned(
        top: 4,
        left: 4,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Theme.of(context).primaryColor,
            ),
            shape: BoxShape.circle,
          ),
          width: 25,
          height: 25,
        ),
      );
    }

    return Container();
  }
}
