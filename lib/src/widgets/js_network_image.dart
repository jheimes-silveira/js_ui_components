import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:octo_image/octo_image.dart';

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
  final OctoPlaceholderBuilder placeholderBuilder;
  final OctoErrorBuilder errorBuilder;
  const JsNetworkImage({
    this.height = 40,
    this.imageUrl,
    this.width = 40,
    this.color,
    this.errorWidget,
    this.circular = true,
    this.decoration,
    this.borderRadius,
    this.boxfit = BoxFit.cover,
    this.decorationBoxfit = BoxFit.cover,
    this.placeholderBuilder,
    this.errorBuilder,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null && errorWidget != null) {
      return errorWidget;
    }
    return OctoImage(
      image: CachedNetworkImageProvider(
        "$imageUrl",
      ),
      height: height,
      width: width,
      fit: boxfit,
      fadeInDuration: Duration(milliseconds: 500),
      fadeOutDuration: Duration(milliseconds: 1000),
      placeholderFadeInDuration:Duration(milliseconds: 1000),
      
      imageBuilder: circular ? OctoImageTransformer.circleAvatar() : null,
      placeholderBuilder: placeholderBuilder ??
          (context) {
            if (kIsWeb) {
              return CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0xFFCCCCCC),
                ),
              );
            }

            return SpinKitCircle(
              duration: Duration(milliseconds: 800),
              color: Theme.of(context).disabledColor,
              size: 30,
            );
          },
      errorBuilder: errorBuilder ??
          (context, url, error) => Container(
                height: height,
                width: width,
                decoration:
                    errorWidget != null ? null : _buildDecoration(context),
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
