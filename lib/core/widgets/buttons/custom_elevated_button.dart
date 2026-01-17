import 'package:flutter/material.dart';
import 'package:hamrah_food_app/core/constants/size_constants.dart';
import 'package:hamrah_food_app/core/extensions/screen_extension.dart';
import 'package:hamrah_food_app/core/widgets/icons/custom_svg_icon.dart';
import 'package:hamrah_food_app/core/widgets/indicators/circle_progress_indicator.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
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
  final double? borderRadius;
  final Color? labelColor;
  final TextStyle? textStyle;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
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
          ? CircleProgressIndicator(color: Theme.of(context).iconTheme.color)
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
