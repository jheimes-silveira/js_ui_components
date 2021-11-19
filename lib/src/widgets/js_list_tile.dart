import 'package:flutter/material.dart';

class JsListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;
  final Widget? title;
  final Widget? subtitle;
  final bool? selected;
  final Color? selectedTileColor;
  final Function()? onTap;
  final GestureLongPressCallback? onLongPress;

  const JsListTile({
    Key? key,
    this.leading,
    this.trailing,
    this.title,
    this.subtitle,
    this.onTap,
    this.onLongPress,
    this.selected,
    this.selectedTileColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(
        right: 16,
        left: 16,
        bottom: 8,
        top: 8,
      ),
      selected: selected ?? false,
      selectedTileColor: selectedTileColor,
      leading: leading,
      trailing: trailing,
      title: title,
      subtitle: subtitle,
      onTap: onTap,
      onLongPress: onLongPress,
    );
  }
}
