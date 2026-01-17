import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.backgroundColor,
    this.elevation = 0,
    this.centerTitle = true,
    this.bottom,
    this.dividerThickness = 0.1,
    this.dividerColor,
    this.child,
  });

  final String? title;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final double elevation;
  final bool centerTitle;
  final PreferredSizeWidget? bottom;
  final double dividerThickness;
  final Color? dividerColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: child ?? (title != null ? Text(title!) : null),
      leading: leading,
      actions: actions,
      backgroundColor:
          backgroundColor ?? Theme.of(context).appBarTheme.backgroundColor,
      elevation: elevation,
      centerTitle: centerTitle,
      bottom:
          bottom ??
          PreferredSize(
            preferredSize: Size.fromHeight(dividerThickness),
            child: Divider(
              height: dividerThickness,
              thickness: dividerThickness,
              color: dividerColor ?? Theme.of(context).dividerColor,
            ),
          ),
    );
  }

  @override
  Size get preferredSize {
    double height = kToolbarHeight;
    if (bottom != null) {
      height += bottom!.preferredSize.height;
    } else {
      height += dividerThickness;
    }

    return Size.fromHeight(height);
  }
}
