import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_food_app/core/constants/size_constants.dart';
import 'package:hamrah_food_app/features/splash/presentation/widgets/app_version_text.dart';
import 'package:hamrah_food_app/features/update/presentation/providers/check_update_provider.dart';
import 'package:hamrah_food_app/features/update/presentation/providers/update_app_provider.dart';
import 'package:hamrah_food_app/features/update/presentation/widgets/update_app_dialog.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((Duration timestamp) async {
      bool isUpdateAvailable = await ref.read(checkUpdateProvider.future);

      if (isUpdateAvailable && mounted) {
        UpdateAppDialog<bool?>().show(context).then((bool? value) {
          if (value != null && value == true) {
            ref.read(updateAppProvider.future);
          }
        });
        return;
      }

      // ref.read(deepLinkServiceProvider).init((String routeName) {
      //   if (mounted) {
      //     context.goNamed(routeName);
      //   }
      // });

      if (mounted) {
        // context.goNamed(RouteNames.instance.home);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: .bottomCenter,
        children: <Widget>[
          // Container(
          //   margin: .all(SizeConstants.instance.spacingXXLarge),
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(Assets.images.logo.path),
          //       fit: .contain,
          //     ),
          //   ),
          // ),
          PositionedDirectional(
            bottom: SizeConstants.instance.spacingSmall,
            child: Column(
              mainAxisSize: .min,
              mainAxisAlignment: .center,
              children: <Widget>[AppVersionText()],
            ),
          ),
        ],
      ),
    );
  }
}
