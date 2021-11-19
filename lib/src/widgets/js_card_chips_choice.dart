import 'package:flutter/material.dart';
import 'package:smart_select/smart_select.dart';

class JsCardChipsChoise<T> extends StatelessWidget {
  final SmartSelect<T> chipsChoice;
  final Function? onTap;
  final Widget? icon;
  final String? label;
  final EdgeInsets? margin;
  final EdgeInsets? paddingContent;
  final bool hideChipsChoice;

  const JsCardChipsChoise({
    required this.chipsChoice,
    this.onTap,
    this.label,
    this.margin,
    this.icon,
    this.hideChipsChoice = false,
    this.paddingContent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      margin: margin ??
          EdgeInsets.only(
            top: 16,
            right: 16,
            left: 16,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap as void Function()?,
            child: Container(
              padding: paddingContent ??
                  EdgeInsets.only(
                    left: 16,
                    right: 8,
                    top: 16,
                    bottom: 16,
                  ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      label ?? "",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  icon ??
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                ],
              ),
            ),
          ),
          if (!hideChipsChoice) chipsChoice,
        ],
      ),
    );
  }
}
