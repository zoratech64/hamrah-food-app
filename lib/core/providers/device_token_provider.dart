import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final FutureProvider<String?> deviceTokenProvider = FutureProvider<String?>((
  Ref ref,
) async {
  final String? token = await FirebaseMessaging.instance.getToken();

  return token;
});
