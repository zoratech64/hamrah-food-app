import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hamrah_food_app/core/assets/fonts.gen.dart';

class FontHelper {
  const FontHelper._();
  static final FontHelper instance = FontHelper._();

  String getFontFamily(BuildContext context) {
    return switch (context.locale.languageCode) {
      'en' => FontFamily.dMSans,
      _ => FontFamily.dMSans,
    };
  }
}
