import 'package:flutter/material.dart';

import '../../js_ui_components.dart';

class JsListBasicTile extends StatelessWidget {
  final String title;
  final String? imageUrl;
  final String? subtitle;
  final BorderRadius? borderRadiusImage;
  final Function()? onTap;
  final GestureLongPressCallback? onLongPress;
  final bool? selected;
  final Color? selectedTileColor;
  final Widget? trailing;

  const JsListBasicTile({
    Key? key,
    required this.title,
    this.subtitle,
    this.imageUrl,
    this.onTap,
    this.borderRadiusImage,
    this.onLongPress,
    this.selected,
    this.trailing,
    this.selectedTileColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        JsListTile(
          selected: selected,
          selectedTileColor: selectedTileColor,
          leading: _buildLeading(context),
          trailing: trailing,
          title: title != null
              ? Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                )
              : null,
          subtitle: subtitle != null
              ? Text(
                  subtitle!,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                )
              : null,
          onTap: onTap,
          onLongPress: onLongPress,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 83),
          child: Container(
            width: double.maxFinite,
            height: 1,
            color: Theme.of(context).disabledColor,
          ),
        ),
      ],
    );
  }

  Widget _buildLeading(BuildContext context) {
    return JsAvatar(
      imageUrl: imageUrl,
      borderRadius: borderRadiusImage,
      placeHolderInitiais: title.substring(0, 1),
    );
  }
}
