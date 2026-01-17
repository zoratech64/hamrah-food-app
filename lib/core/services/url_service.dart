import 'package:flutter/material.dart';
import 'package:hamrah_food_app/core/enums/snackbar_type_enum.dart';
import 'package:hamrah_food_app/core/widgets/snackbars/custom_snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlService {
  const UrlService._();
  static final UrlService instance = UrlService._();

  Future<void> openBrowser(BuildContext context, String url) async {
    final Uri uri = Uri.parse(url);

    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        if (context.mounted) {
          CustomSnackbar(
            title: 'Open Browser', // Tr
            message: 'Can\'t launch url.', // Tr
            type: SnackbarType.ERROR,
          ).show(context);
        }
      }
    } on Exception catch (error, stackTrace) {
      debugPrint('Error: $error\nStack trace: $stackTrace');

      if (context.mounted) {
        CustomSnackbar(
          title: 'Open Browser', // Tr
          message: error.toString(),
          type: SnackbarType.ERROR,
        ).show(context);
      }
    }
  }
}
