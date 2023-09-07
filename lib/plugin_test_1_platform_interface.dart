import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plugin_test_1_method_channel.dart';

abstract class PluginTest_1Platform extends PlatformInterface {
  /// Constructs a PluginTest_1Platform.
  PluginTest_1Platform() : super(token: _token);

  static final Object _token = Object();

  static PluginTest_1Platform _instance = MethodChannelPluginTest_1();

  /// The default instance of [PluginTest_1Platform] to use.
  ///
  /// Defaults to [MethodChannelPluginTest_1].
  static PluginTest_1Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginTest_1Platform] when
  /// they register themselves.
  static set instance(PluginTest_1Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getPlatformName() {
    throw UnimplementedError('platformName() has not been implemented.');
  }
}
