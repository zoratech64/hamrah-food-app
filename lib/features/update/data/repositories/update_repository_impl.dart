import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:hamrah_food_app/core/error_handler/error_handler.dart';
import 'package:hamrah_food_app/features/update/domain/repositories/update_repository.dart';

final Provider<UpdateRepositoryImpl> updateRepositoryProvider =
    Provider<UpdateRepositoryImpl>((Ref ref) {
      ErrorHandler errorHandler = ErrorHandler();

      return UpdateRepositoryImpl(errorHandler);
    });

class UpdateRepositoryImpl extends UpdateRepository {
  final ErrorHandler _errorHandler;

  UpdateRepositoryImpl(this._errorHandler);

  @override
  Future<bool> checkUpdate() async {
    return _errorHandler.safeExecute<bool>(
      'checkUpdate',
      execute: () async {
        AppUpdateInfo info = await InAppUpdate.checkForUpdate();

        return info.updateAvailability == UpdateAvailability.updateAvailable;
      },
      returnValue: false,
    );
  }

  @override
  Future<void> updateApp() async {
    return _errorHandler.safeExecute<void>(
      'checkUpdate',
      execute: () async {
        await InAppUpdate.performImmediateUpdate();
      },
    );
  }
}
