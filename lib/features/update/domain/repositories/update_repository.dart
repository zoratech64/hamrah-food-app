abstract class UpdateRepository {
  Future<bool> checkUpdate();
  Future<void> updateApp();
}
