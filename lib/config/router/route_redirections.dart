import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:hamrah_food_app/config/router/route_names.dart';
import 'package:hamrah_food_app/core/providers/supabase_client_provider.dart';

class RouteRedirections {
  const RouteRedirections._();
  static final RouteRedirections instance = RouteRedirections._();

  FutureOr<String?> homeRedirection(Ref ref, GoRouterState state) {
    final User? user = ref.read(supabaseClientProvider).auth.currentUser;

    if (user != null) {
      return '/${RouteNames.instance.home}';
    }
    return '/${RouteNames.instance.signIn}';
  }
}
