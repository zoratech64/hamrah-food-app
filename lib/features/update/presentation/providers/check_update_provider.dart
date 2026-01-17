import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_food_app/features/update/domain/use_cases/check_update_use_case.dart';

final FutureProvider<bool> checkUpdateProvider = FutureProvider<bool>((
  Ref ref,
) {
  final CheckUpdateUseCase checkUpdateUseCase = ref.read(
    checkUpdateUseCaseProvider,
  );

  return checkUpdateUseCase();
});
