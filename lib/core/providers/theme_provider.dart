import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final StateNotifierProvider<ThemeProvider, ThemeMode> themeProvider =
    StateNotifierProvider<ThemeProvider, ThemeMode>(
      (Ref ref) => ThemeProvider(),
    );

class ThemeProvider extends StateNotifier<ThemeMode> {
  ThemeProvider() : super(ThemeMode.system);

  void changeLanguage(ThemeMode themeMode) {
    state = themeMode;
  }
}
