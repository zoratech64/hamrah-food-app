import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hamrah_food_app/config/router/app_router.dart';
import 'package:hamrah_food_app/config/theme/dark_theme.dart';
import 'package:hamrah_food_app/config/theme/light_theme.dart';
import 'package:hamrah_food_app/core/extensions/screen_extension.dart';
import 'package:hamrah_food_app/core/localization/locale_keys.g.dart';
import 'package:hamrah_food_app/core/providers/connectivity_provider.dart';
import 'package:hamrah_food_app/core/providers/theme_provider.dart';
import 'package:hamrah_food_app/core/widgets/dialogs/no_internet_connection_dialog.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GoRouter goRouter = ref.read(goRouterProvider);

    ref.listen<bool>(connectivityProvider, (bool? previous, bool isConnected) {
      final BuildContext? navigatorContext = ref
          .read(globalNavigatorKey)
          .currentContext;
      if (navigatorContext == null) {
        return;
      }

      if (previous != null && previous == isConnected) {
        return;
      }

      if (!isConnected && (previous == null || previous == true)) {
        NoInternetConnectionDialog<Widget>().show(navigatorContext);
      } else if (isConnected && previous == false) {
        NavigatorState navigator = Navigator.of(
          navigatorContext,
          rootNavigator: true,
        );
        if (navigator.canPop()) {
          navigator.pop();
        }
      }
    });

    return Builder(
      builder: (BuildContext context) {
        ScreenUtil.init(
          context,
          designSize: context.designSize,
          minTextAdapt: true,
          splitScreenMode: true,
        );

        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          onGenerateTitle: (BuildContext context) => LocaleKeys.appName.tr(),
          themeMode: ref.watch(themeProvider),
          theme: LightTheme(context).theme,
          darkTheme: DarkTheme(context).theme,
          locale: context.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          routerConfig: goRouter,
        );
      },
    );
  }
}
