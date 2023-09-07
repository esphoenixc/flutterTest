import 'plugin_test_1_platform_interface.dart';

class PluginTest_1 {
  Future<String?> getPlatformVersion() {
    return PluginTest_1Platform.instance.getPlatformVersion();
  }

  Future<String?> getPlatformName() {
    return PluginTest_1Platform.instance.getPlatformName();
  }
}
