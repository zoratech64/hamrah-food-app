import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:hamrah_food_app/app.dart';
import 'package:hamrah_food_app/config/firebase/firebase_options.dart';
import 'package:hamrah_food_app/core/constants/env_constants.dart';
import 'package:hamrah_food_app/core/enums/language_enum.dart';
import 'package:hamrah_food_app/core/observers/riverpod_observer.dart';
import 'package:hamrah_food_app/core/services/env_service.dart';

@pragma('vm:entry-point')
Future<void> _fcmBackgroundHandler(RemoteMessage message) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

Future<void> _fcmMessageHandler(RemoteMessage message) async {}

Future<void> _fcmMessageOpenedAppHandler(RemoteMessage message) async {}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  await EnvService.instance.init();

  await Supabase.initialize(
    url: EnvConstants.instance.supabaseProjectUrl,
    anonKey: EnvConstants.instance.supabasePublishableApiKey,
  );

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FirebaseMessaging.onBackgroundMessage(_fcmBackgroundHandler);

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  runZonedGuarded(() {
    FirebaseMessaging.onMessage.listen(_fcmMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_fcmMessageOpenedAppHandler);

    runApp(
      EasyLocalization(
        path: 'assets/localization',
        startLocale: Locale(Language.ENGLISH.code),
        supportedLocales: List<Locale>.generate(
          Language.values.length,
          (int index) => Locale(Language.values[index].code),
        ),
        child: ProviderScope(
          observers: <ProviderObserver>[if (kDebugMode) RiverpodObserver()],
          child: const App(),
        ),
      ),
    );
  }, FirebaseCrashlytics.instance.recordError);
}
