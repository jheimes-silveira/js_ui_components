import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';
import 'package:shimmer/shimmer.dart';

class JsNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final Color color;
  final bool circular;
  final Widget errorWidget;
  final BoxDecoration decoration;
  final BorderRadius borderRadius;
  final BoxFit boxfit;
  final BoxFit decorationBoxfit;

  const JsNetworkImage({
    this.height = 40,
    this.imageUrl,
    this.width = 40,
    this.color,
    this.errorWidget,
    this.circular = true,
    this.decoration,
    this.borderRadius,
    this.boxfit = BoxFit.fill,
    this.decorationBoxfit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return OctoImage(
      image: CachedNetworkImageProvider(
        "$imageUrl",
      ),
      height: height,
      width: width,
      fit: boxfit,
      imageBuilder: circular ? OctoImageTransformer.circleAvatar() : null,
      placeholderBuilder: (context) {
        if (kIsWeb) {
          return CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(
              Color(0xFFCCCCCC),
            ),
          );
        }

        return Shimmer.fromColors(
          baseColor: Colors.grey[300],
          highlightColor: Colors.grey[100],
          child: Container(
            height: height,
            width: width,
            decoration: _buildDecoration(context),
          ),
        );
      },
      errorBuilder: (context, url, error) => Container(
        height: height,
        width: width,
        decoration: _buildDecoration(context),
        child: errorWidget,
      ),
    );
  }

  BoxDecoration _buildDecoration(BuildContext context) {
    return BoxDecoration(
      shape: _getShaper(),
      borderRadius: _getBorderRadius(),
      color: color ?? Color(0xFFCCCCCC),
    );
  }

  BoxShape _getShaper() {
    if (borderRadius != null || !circular) {
      return BoxShape.rectangle;
    }

    return BoxShape.circle;
  }

  _getBorderRadius() {
    return borderRadius;
  }
}
