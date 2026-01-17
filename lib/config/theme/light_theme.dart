import 'package:flutter/material.dart';
import 'package:hamrah_food_app/config/theme/dark_theme.dart';

class LightTheme {
  LightTheme._();
  static final LightTheme instance = LightTheme._();

  ThemeData _theme = ThemeData();
  ThemeData get theme => _theme;

  LightTheme(BuildContext context) {
    _theme = DarkTheme(context).theme;
  }
}
