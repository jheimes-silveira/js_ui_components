import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;

  final bool automaticallyImplyLeading;

  final Widget? title;

  final List<Widget>? actions;

  final Widget? flexibleSpace;

  final PreferredSizeWidget? bottom;

  final double? elevation;

  final Color? shadowColor;

  final ShapeBorder? shape;

  final Color? backgroundColor;

  final Color? foregroundColor;

  final Brightness? brightness;

  final IconThemeData? iconTheme;

  final IconThemeData? actionsIconTheme;

  final TextTheme? textTheme;

  final bool primary;

  final bool loading;

  final bool? centerTitle;

  final bool excludeHeaderSemantics;

  final double? titleSpacing;

  final double toolbarOpacity;

  final double bottomOpacity;

  final double? toolbarHeight;

  final double? leadingWidth;

  final bool? backwardsCompatibility;

  final TextStyle? toolbarTextStyle;

  final TextStyle? titleTextStyle;

  //

  final SystemUiOverlayStyle? systemOverlayStyle;
  const JsAppBar({
    Key? key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.shadowColor,
    this.shape,
    this.backgroundColor,
    this.foregroundColor,
    this.brightness,
    this.iconTheme,
    this.actionsIconTheme,
    this.textTheme,
    this.primary = true,
    this.centerTitle,
    this.excludeHeaderSemantics = false,
    this.titleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    this.toolbarHeight,
    this.leadingWidth,
    this.backwardsCompatibility,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
    this.loading = false,
  });

  @override
  Size get preferredSize => Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: key,
      leading: leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: title,
      actions: (loading)
          ? actions
          : [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                      strokeWidth: 2,
                    ),
                  ),
                ],
              ),
            ],
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      elevation: elevation,
      shadowColor: shadowColor,
      shape: shape,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      brightness: brightness,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      textTheme: textTheme,
      primary: primary,
      centerTitle: centerTitle,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity,
      bottomOpacity: bottomOpacity,
      toolbarHeight: toolbarHeight,
      leadingWidth: leadingWidth,
      backwardsCompatibility: backwardsCompatibility,
      toolbarTextStyle: toolbarTextStyle,
      titleTextStyle: titleTextStyle,
      systemOverlayStyle: systemOverlayStyle,
    );
  }
}
