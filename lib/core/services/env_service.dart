import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hamrah_food_app/core/constants/env_constants.dart';

class EnvService {
  const EnvService._();
  static final EnvService instance = EnvService._();

  EnvConstants get envConstants => EnvConstants.instance;

  Future<void> init() async {
    final List<String> requiredVariables = <String>[
      'SUPABASE_PROJECT_URL',
      'SUPABASE_PUBLISHABLE_API_KEY',
      'SUPABASE_SIGN_IMAGES_STORAGE_BUCKET',
    ];

    if (requiredVariables.isEmpty) {
      return;
    }

    await dotenv.load();

    for (String variable in requiredVariables) {
      if (dotenv.env[variable] == null) {
        throw Exception('Missing env variable: $variable');
      }
    }
  }
}
