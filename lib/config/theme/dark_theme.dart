import 'package:flutter/material.dart';
import 'package:hamrah_food_app/core/constants/color_constants.dart';
import 'package:hamrah_food_app/core/constants/size_constants.dart';
import 'package:hamrah_food_app/core/utils/helper/font_helper.dart';

class DarkTheme {
  DarkTheme._();
  static final DarkTheme instance = DarkTheme._();

  ThemeData _theme = ThemeData();
  ThemeData get theme => _theme;

  final DarkColorConstants _darkColors = ColorConstants.instance.dark;

  DarkTheme(BuildContext context) {
    _theme = ThemeData.dark().copyWith(
      colorScheme: ColorScheme.dark(
        primary: _darkColors.primary,
        error: _darkColors.error,
        surface: _darkColors.surface,
      ),
      highlightColor: _darkColors.highlight,
      hintColor: _darkColors.hint,
      dividerTheme: DividerThemeData(color: _darkColors.divider),
      scaffoldBackgroundColor: _darkColors.scaffoldBackground,
      textTheme: TextTheme(
        labelSmall: Theme.of(
          context,
        ).textTheme.labelSmall!.copyWith(color: _darkColors.text),
        labelMedium: Theme.of(
          context,
        ).textTheme.labelMedium!.copyWith(color: _darkColors.text),
        labelLarge: Theme.of(
          context,
        ).textTheme.labelLarge!.copyWith(color: _darkColors.text),
        bodySmall: Theme.of(
          context,
        ).textTheme.bodySmall!.copyWith(color: _darkColors.text),
        bodyMedium: Theme.of(
          context,
        ).textTheme.bodyMedium!.copyWith(color: _darkColors.text),
        bodyLarge: Theme.of(
          context,
        ).textTheme.bodyLarge!.copyWith(color: _darkColors.text),
        titleSmall: Theme.of(
          context,
        ).textTheme.titleSmall!.copyWith(color: _darkColors.text),
        titleMedium: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(color: _darkColors.text),
        titleLarge: Theme.of(
          context,
        ).textTheme.titleLarge!.copyWith(color: _darkColors.text),
        headlineSmall: Theme.of(
          context,
        ).textTheme.headlineSmall!.copyWith(color: _darkColors.text),
        headlineMedium: Theme.of(
          context,
        ).textTheme.headlineMedium!.copyWith(color: _darkColors.text),
        headlineLarge: Theme.of(
          context,
        ).textTheme.headlineLarge!.copyWith(color: _darkColors.text),
        displaySmall: Theme.of(
          context,
        ).textTheme.displaySmall!.copyWith(color: _darkColors.text),
        displayMedium: Theme.of(
          context,
        ).textTheme.displayMedium!.copyWith(color: _darkColors.text),
        displayLarge: Theme.of(
          context,
        ).textTheme.displayLarge!.copyWith(color: _darkColors.text),
      ).apply(fontFamily: FontHelper.instance.getFontFamily(context)),
      inputDecorationTheme: InputDecorationThemeData().copyWith(
        contentPadding: EdgeInsetsDirectional.symmetric(
          horizontal: SizeConstants.instance.spacingSmall,
          vertical: SizeConstants.instance.spacingMedium,
        ),
        counterStyle: TextStyle(fontSize: 0),
        filled: true,
        fillColor: _darkColors.surface,
        errorStyle: Theme.of(
          context,
        ).textTheme.bodySmall!.copyWith(color: _darkColors.error),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            SizeConstants.instance.radiusMedium,
          ),
          borderSide: BorderSide.none,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            SizeConstants.instance.radiusMedium,
          ),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            SizeConstants.instance.radiusMedium,
          ),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            SizeConstants.instance.radiusMedium,
          ),
          borderSide: BorderSide.none,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData().copyWith(
        backgroundColor: _darkColors.floatingActionButtonBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            SizeConstants.instance.radiusLarge,
          ),
          side: BorderSide(color: Theme.of(context).dividerColor, width: 0.1),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData().copyWith(
        backgroundColor: _darkColors.bottomNavigationBarBackground,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: _darkColors.hint,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      iconTheme: IconThemeData().copyWith(color: _darkColors.icon),
      appBarTheme: AppBarTheme().copyWith(
        backgroundColor: _darkColors.appBarBackground,
        centerTitle: true,
        scrolledUnderElevation: 0,
        titleSpacing: 0,
        titleTextStyle: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(color: _darkColors.text),
      ),
      cardTheme: CardThemeData().copyWith(
        color: _darkColors.card,
        elevation: 0,
        margin: EdgeInsetsDirectional.zero,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _darkColors.elevatedButtonBackground,
          elevation: 0,
          fixedSize: Size.fromHeight(SizeConstants.instance.buttonHeightMedium),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          elevation: 0,
          fixedSize: Size.fromHeight(SizeConstants.instance.buttonHeightSmall),
        ),
      ),
      listTileTheme: ListTileThemeData().copyWith(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            SizeConstants.instance.radiusSmall,
          ),
        ),
        tileColor: _darkColors.listTile,
      ),
      tabBarTheme: TabBarThemeData().copyWith(
        dividerColor: _darkColors.divider,
        dividerHeight: 0.1,
        indicatorColor: _darkColors.primary,
        labelStyle: Theme.of(
          context,
        ).textTheme.titleSmall!.copyWith(color: _darkColors.text),
        splashBorderRadius: BorderRadius.circular(
          SizeConstants.instance.radiusSmall,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelStyle: Theme.of(
          context,
        ).textTheme.titleSmall!.copyWith(color: _darkColors.hint),
        labelPadding: EdgeInsetsDirectional.zero,
      ),
    );
  }
}
