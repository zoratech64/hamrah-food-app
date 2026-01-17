import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_food_app/features/update/domain/use_cases/update_app.dart';

final FutureProvider<void> updateAppProvider = FutureProvider<void>((Ref ref) {
  final UpdateAppUseCase updateAppUseCase = ref.read(updateAppUseCaseProvider);

  return updateAppUseCase();
});
