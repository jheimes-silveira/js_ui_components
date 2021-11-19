import 'package:flutter/material.dart';
import 'package:js_ui_components/src/widgets/js_list_tile.dart';

class JsSwitchListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final bool value;
  final Function(bool value) onChanged;

  const JsSwitchListTile({
    Key? key,
    this.leading,
    required this.value,
    required this.onChanged,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return JsListTile(
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: Switch(
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
