import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgIcon extends StatelessWidget {
  const CustomSvgIcon(
    this.iconPath, {
    super.key,
    this.size,
    this.width,
    this.height,
    this.color,
    this.colorful = false,
    this.fit = BoxFit.contain,
    this.semanticLabel,
    this.onTap,
  });

  final String iconPath;
  final double? size;
  final double? width;
  final double? height;
  final Color? color;
  final bool colorful;
  final BoxFit fit;
  final String? semanticLabel;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: SvgPicture.asset(
        iconPath,
        width: size ?? width,
        height: size ?? height,
        fit: fit,
        semanticsLabel: semanticLabel,
        colorFilter: colorful
            ? null
            : ColorFilter.mode(
                color ?? Theme.of(context).iconTheme.color!,
                BlendMode.srcIn,
              ),
      ),
    );
  }
}
