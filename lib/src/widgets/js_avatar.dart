import 'package:flutter/material.dart';

import '../../js_ui_components.dart';

class JsAvatar extends StatelessWidget {
  final String? imageUrl;
  final BorderRadius? borderRadius;
  final bool? selected;
  final Color? selectedTileColor;
  final String? placeHolderInitiais;
  final double height;
  final double width;
  const JsAvatar({
    Key? key,
    this.imageUrl,
    this.borderRadius,
    this.selected,
    this.selectedTileColor,
    this.placeHolderInitiais,
    this.height = 50,
    this.width = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null) {
      return JsNetworkImage(
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        imageUrl: imageUrl ?? '',
        height: height,
        width: width,
      );
    }
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: borderRadius ?? BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      height: height,
      width: width,
      child: placeHolderInitiais != null
          ? Text(
              placeHolderInitiais!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            )
          : null,
    );
  }
}
