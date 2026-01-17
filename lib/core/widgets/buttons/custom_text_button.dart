import 'package:flutter/material.dart';
import 'package:hamrah_food_app/core/constants/size_constants.dart';
import 'package:hamrah_food_app/core/extensions/screen_extension.dart';
import 'package:hamrah_food_app/core/widgets/icons/custom_svg_icon.dart';
import 'package:hamrah_food_app/core/widgets/indicators/circle_progress_indicator.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.onPressed,
    required this.label,
    super.key,
    this.iconPath,
    this.colorfulIcon = false,
    this.height,
    this.expanded = false,
    this.padding,
    this.backgroundColor,
    this.elevation = 0,
    this.hasBorder = true,
    this.borderRadius,
    this.labelColor,
    this.textStyle,
    this.isLoading = false,
  });

  final VoidCallback onPressed;
  final String? iconPath;
  final bool colorfulIcon;
  final String label;
  final double? height;
  final bool expanded;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final double elevation;
  final bool hasBorder;
  final double? borderRadius;
  final Color? labelColor;
  final TextStyle? textStyle;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: padding,
        elevation: elevation,
        fixedSize: expanded
            ? Size(
                context.screenWidth,
                height ?? SizeConstants.instance.buttonHeightMedium,
              )
            : height != null
            ? Size.fromHeight(height!)
            : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            borderRadius ?? SizeConstants.instance.radiusMedium,
          ),
          side: hasBorder
              ? BorderSide(color: Theme.of(context).dividerColor, width: 0.1)
              : BorderSide.none,
        ),
      ),
      icon: !isLoading && iconPath != null
          ? CustomSvgIcon(
              iconPath!,
              colorful: colorfulIcon,
              color: Theme.of(context).iconTheme.color,
            )
          : null,
      label: isLoading
          ? const CircleProgressIndicator()
          : Text(
              label,
              style:
                  textStyle ??
                  Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: labelColor,
                    fontWeight: FontWeight.w600,
                  ),
            ),
    );
  }
}
