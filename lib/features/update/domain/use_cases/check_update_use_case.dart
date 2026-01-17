import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_food_app/core/resources/use_case.dart';
import 'package:hamrah_food_app/features/update/data/repositories/update_repository_impl.dart';
import 'package:hamrah_food_app/features/update/domain/repositories/update_repository.dart';

final Provider<CheckUpdateUseCase> checkUpdateUseCaseProvider =
    Provider<CheckUpdateUseCase>((Ref ref) {
      final UpdateRepository updateRepository = ref.read(
        updateRepositoryProvider,
      );

      return CheckUpdateUseCase(updateRepository);
    });

class CheckUpdateUseCase implements UseCase<bool, void> {
  final UpdateRepository _updateRepository;

  CheckUpdateUseCase(this._updateRepository);

  @override
  Future<bool> call({void params}) {
    return _updateRepository.checkUpdate();
  }
}
