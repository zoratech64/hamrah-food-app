import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final Provider<SupabaseClient> supabaseClientProvider =
    Provider<SupabaseClient>((Ref ref) {
      return Supabase.instance.client;
    });
