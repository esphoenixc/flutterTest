import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plugin_test_1_platform_interface.dart';

/// An implementation of [PluginTest_1Platform] that uses method channels.
class MethodChannelPluginTest_1 extends PluginTest_1Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugin_test_1');
  final eventChannel = const EventChannel('name_event');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getPlatformName() async {
    final name = await methodChannel.invokeMethod<String>('getPlatformName');
    return name;
  }
}
