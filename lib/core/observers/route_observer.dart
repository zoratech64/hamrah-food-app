import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider<RouteObserver<PageRoute<Object?>>> routeObserverProvider =
    Provider<RouteObserver<PageRoute<Object?>>>(
      (Ref ref) => RouteObserver<PageRoute<Object?>>(),
    );
