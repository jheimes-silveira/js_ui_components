import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:js_ui_components/src/theme/dimension.dart';

class JsFooterButtons extends StatelessWidget {
  final List<Widget> items;
  final EdgeInsets? padding;
  final bool? divider;
  final bool? dividerColor;

  const JsFooterButtons({
    Key? key,
    required this.items,
    this.padding,
    this.divider,
    this.dividerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          EdgeInsets.only(
            left: Dimension.paddingContent,
            right: Dimension.paddingContent,
            bottom: Dimension.paddingContent / 2,
            top: Dimension.paddingContent / 2,
          ),
      decoration: BoxDecoration(
        border: divider == null || !divider!
            ? null
            : Border(
                top: BorderSide(
                  color: Theme.of(context).disabledColor,
                ),
              ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: items,
      ),
    );
  }
}
