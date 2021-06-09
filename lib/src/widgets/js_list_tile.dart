import 'package:flutter/material.dart';

class JsListTile extends StatelessWidget {
  final Widget leading;
  final Widget trailing;
  final Widget title;
  final Widget subtitle;
  final Function() onTap;

  const JsListTile({
    Key key,
    this.leading,
    this.trailing,
    this.title,
    this.subtitle,
    this.onTap,
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
      horizontalTitleGap: 0,
      leading: leading,
      trailing: trailing,
      title: title,
      subtitle: subtitle,
      onTap: onTap,
    );
  }
}
