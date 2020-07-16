import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:shimmer/shimmer.dart';

class JsNetworkImage extends StatelessWidget {
  final BaseCacheManager cacheManager;
  final String imageUrl;
  final double height;
  final double width;
  final Color color;
  final bool circular;
  final Widget errorWidget;
  final BoxDecoration decoration;
  final BorderRadius borderRadius;

  const JsNetworkImage({
    this.height = 40,
    this.imageUrl,
    this.width = 40,
    this.color,
    this.errorWidget,
    this.circular = true,
    this.cacheManager,
    this.decoration,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: "$imageUrl",
      width: width,
      height: height,
      cacheManager: cacheManager,
      fadeInCurve: Curves.fastOutSlowIn,
      fit: BoxFit.fill,
      imageBuilder: (context, imageProvider) => Container(
        height: height,
        width: width,
        decoration: _buildDecoration(context).copyWith(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          Shimmer.fromColors(
        baseColor: Colors.grey[300],
        highlightColor: Colors.grey[100],
        child: Container(
          height: height,
          width: width,
          decoration: _buildDecoration(context),
        ),
      ),
      errorWidget: (context, url, error) => Container(
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
      color: color ?? Theme.of(context).disabledColor,
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
