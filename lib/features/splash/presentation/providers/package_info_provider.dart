import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:package_info_plus/package_info_plus.dart';

final StateNotifierProvider<PackageInfoProvider, PackageInfo?>
packageInfoProvider = StateNotifierProvider<PackageInfoProvider, PackageInfo?>(
  (Ref ref) => PackageInfoProvider(),
);

class PackageInfoProvider extends StateNotifier<PackageInfo?> {
  PackageInfoProvider() : super(null) {
    loadPackageInfo();
  }

  Future<void> loadPackageInfo() async {
    PackageInfo info = await PackageInfo.fromPlatform();
    state = info;
  }
}
