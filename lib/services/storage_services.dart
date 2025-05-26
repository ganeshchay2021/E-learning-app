import 'package:get_storage/get_storage.dart';

class StorageServices {
  static final _box = GetStorage();
  static const _isFirstTime = "isFirsTime";

  static Future<void> init() async {
    await GetStorage.init();
  }

  static bool isFirstTime() {
    return _box.read(_isFirstTime) ?? true;
  }

  static Future<void> setFirstTime(bool value) async {
    await _box.write(_isFirstTime, value);
  }
}
