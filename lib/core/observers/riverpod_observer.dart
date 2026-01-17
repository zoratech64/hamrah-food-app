import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final class RiverpodObserver extends ProviderObserver {
  @override
  void didAddProvider(ProviderObserverContext context, Object? value) {
    debugPrint('Added: ${context.provider.runtimeType} = $value');
  }

  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    debugPrint(
      'Updated: ${context.provider.runtimeType} '
      '→ from: $previousValue to: $newValue',
    );
  }

  @override
  void didDisposeProvider(ProviderObserverContext context) {
    debugPrint('Disposed: ${context.provider.runtimeType}');
  }
}
