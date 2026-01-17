import 'package:flutter/material.dart';
import 'package:hamrah_food_app/core/constants/size_constants.dart';
import 'package:hamrah_food_app/core/enums/snackbar_type_enum.dart';
import 'package:hamrah_food_app/core/widgets/icons/custom_svg_icon.dart';

class CustomSnackbar extends StatelessWidget {
  const CustomSnackbar({
    required this.title,
    required this.message,
    required this.type,
    super.key,
  });

  final String title;
  final String message;
  final SnackbarType type;

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> show(
    BuildContext context,
  ) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 3),
        elevation: 0,
        margin: EdgeInsetsDirectional.all(SizeConstants.instance.spacingSmall),
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: SizeConstants.instance.spacingSmall,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            SizeConstants.instance.radiusMedium,
          ),
          side: BorderSide(color: Theme.of(context).dividerColor, width: 0.1),
        ),
        content: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsetsDirectional.zero,
      leading: CustomSvgIcon(
        type.iconPath,
        color: type.color,
        size: SizeConstants.instance.iconLarge,
      ),
      title: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        message,
        style: Theme.of(
          context,
        ).textTheme.titleSmall!.copyWith(color: Theme.of(context).hintColor),
      ),
    );
  }
}
