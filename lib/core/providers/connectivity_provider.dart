import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

final NotifierProvider<ConnectivityNotifier, bool> connectivityProvider =
    NotifierProvider<ConnectivityNotifier, bool>(() {
      return ConnectivityNotifier();
    });

class ConnectivityNotifier extends Notifier<bool> {
  late final InternetConnection _checker;
  late final StreamSubscription<InternetStatus> _subscription;
  Timer? _debounceTimer;

  @override
  bool build() {
    _checker = InternetConnection();

    state = true;

    _checker.hasInternetAccess.then((bool connected) {
      _updateState(connected);
    });

    _subscription = _checker.onStatusChange.listen((InternetStatus status) {
      _updateState(status == InternetStatus.connected);
    });

    ref.onDispose(() {
      _subscription.cancel();
      _debounceTimer?.cancel();
    });

    return state;
  }

  void _updateState(bool connected) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      state = connected;
    });
  }
}
