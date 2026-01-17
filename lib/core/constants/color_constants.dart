import 'package:flutter/material.dart';

class ColorConstants {
  ColorConstants._();
  static final ColorConstants instance = ColorConstants._();

  DarkColorConstants get dark => DarkColorConstants();
  LightColorConstants get light => LightColorConstants();

  Color get black => Colors.black;
  Color get white => Colors.white;
  Color get star => Colors.yellow;
  Color get transparent => Colors.transparent;
}

class DarkColorConstants {
  Color get primary => const Color(0xFF4CAF50); // Todo: use for buttons
  Color get surface => const Color(0xFF12141C);

  Color get scaffoldBackground => const Color(0xFF0E0F13);
  Color get floatingActionButtonBackground => const Color(0xFF4CAF50);
  Color get bottomNavigationBarBackground => const Color(0xFF0E0F13);
  Color get appBarBackground => const Color(0xFF0E0F13);
  Color get card => const Color(0xFF0E0F13);
  Color get highlight => const Color(0xFF151827);
  Color get hint => const Color(0xFF636980);
  Color get listTile => const Color(0xFF12141C);
  Color get text => const Color(0xFFFFFFFF);
  Color get divider => const Color(0xFF636980);
  Color get icon => const Color(0xFFFFFFFF);
  Color get elevatedButtonBackground => const Color(0xFF4CAF50);

  Color get success => const Color(0xFF2ED47A);
  Color get error => const Color(0xFFFF5C5C);
  Color get warning => const Color(0xFFF2C94C);
  Color get info => const Color(0xFF5AA2FF);
}

class LightColorConstants {}
