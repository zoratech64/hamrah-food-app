import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:hamrah_food_app/features/splash/presentation/providers/package_info_provider.dart';

class AppVersionText extends ConsumerWidget {
  const AppVersionText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PackageInfo? packageInfo = ref.watch(packageInfoProvider);

    return packageInfo == null
        ? const SizedBox()
        : Text(
            'v${packageInfo.version}',
            style: Theme.of(context).textTheme.titleSmall,
          );
  }
}
