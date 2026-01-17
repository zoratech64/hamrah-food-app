import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:hamrah_food_app/core/enums/language_enum.dart';

final StateNotifierProvider<LanguageProvider, Language> languageProvider =
    StateNotifierProvider<LanguageProvider, Language>(
      (Ref ref) => LanguageProvider(),
    );

class LanguageProvider extends StateNotifier<Language> {
  LanguageProvider() : super(Language.ENGLISH);

  void changeLanguage({
    required BuildContext context,
    required Language language,
  }) {
    context.setLocale(Locale(language.code));
    state = language;
  }
}
