import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvConstants {
  EnvConstants._();
  static final EnvConstants instance = EnvConstants._();

  String get supabaseProjectUrl => dotenv.env['SUPABASE_PROJECT_URL']!;
  String get supabasePublishableApiKey =>
      dotenv.env['SUPABASE_PUBLISHABLE_API_KEY']!;
  String get supabaseSignImagesStorageBucket =>
      dotenv.env['SUPABASE_SIGN_IMAGES_STORAGE_BUCKET']!;

  String get oAuthWebClientId => dotenv.env['OAUTH_WEB_CLIENT_ID']!;
  String get oAuthAndroidClientId => dotenv.env['OAUTH_ANDROID_CLIENT_ID']!;
}
