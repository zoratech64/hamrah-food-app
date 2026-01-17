import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:hamrah_food_app/config/router/route_names.dart';

final Provider<DeepLinkService> deepLinkServiceProvider =
    Provider<DeepLinkService>((Ref ref) {
      return DeepLinkService(ref);
    });

class DeepLinkService {
  final Ref ref;

  DeepLinkService(this.ref);

  final AppLinks _appLinks = AppLinks();
  StreamSubscription<Uri>? _subscription;

  Future<void> init(Function(String) callback) async {
    final Uri? uri = await _appLinks.getInitialLink();

    if (uri != null && uri.host == 'reset-password') {
      return await _handlePasswordRecovery(
        uri,
        () => callback(RouteNames.instance.resetPassword),
      );
    }

    _subscription = _appLinks.uriLinkStream.listen((Uri uri) async {
      if (uri.host == 'reset-password') {
        await _handlePasswordRecovery(
          uri,
          () => callback(RouteNames.instance.resetPassword),
        );
      }
    });

    callback(RouteNames.instance.home);
  }

  Future<void> _handlePasswordRecovery(Uri uri, VoidCallback callback) async {
    final String? code = uri.queryParameters['code'];

    if (code != null) {
      await Supabase.instance.client.auth.exchangeCodeForSession(code);

      callback();
    }
  }

  void dispose() {
    _subscription?.cancel();
  }
}
