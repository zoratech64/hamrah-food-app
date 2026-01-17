import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:hamrah_food_app/core/providers/supabase_client_provider.dart';

final FutureProviderFamily<String, String> signedImageUrlProvider =
    FutureProvider.family<String, String>((Ref ref, String path) async {
      final SupabaseClient supabase = ref.read(supabaseClientProvider);

      return supabase.storage.from('images').createSignedUrl(path, 60 * 60 * 6);
    });
