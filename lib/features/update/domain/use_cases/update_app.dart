import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_food_app/core/resources/use_case.dart';
import 'package:hamrah_food_app/features/update/data/repositories/update_repository_impl.dart';
import 'package:hamrah_food_app/features/update/domain/repositories/update_repository.dart';

final Provider<UpdateAppUseCase> updateAppUseCaseProvider =
    Provider<UpdateAppUseCase>((Ref ref) {
      final UpdateRepository updateRepository = ref.read(
        updateRepositoryProvider,
      );

      return UpdateAppUseCase(updateRepository);
    });

class UpdateAppUseCase implements UseCase<void, void> {
  final UpdateRepository _updateRepository;

  UpdateAppUseCase(this._updateRepository);

  @override
  Future<void> call({void params}) {
    return _updateRepository.updateApp();
  }
}
