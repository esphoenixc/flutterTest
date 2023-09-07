import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_test_1/plugin_test_1.dart';
import 'package:plugin_test_1/plugin_test_1_platform_interface.dart';
import 'package:plugin_test_1/plugin_test_1_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPluginTest_1Platform
    with MockPlatformInterfaceMixin
    implements PluginTest_1Platform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> getPlatformName() => Future.value('42');
}

void main() {
  final PluginTest_1Platform initialPlatform = PluginTest_1Platform.instance;

  test('$MethodChannelPluginTest_1 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPluginTest_1>());
  });

  test('getPlatformVersion', () async {
    PluginTest_1 pluginTest_1Plugin = PluginTest_1();
    MockPluginTest_1Platform fakePlatform = MockPluginTest_1Platform();
    PluginTest_1Platform.instance = fakePlatform;

    expect(await pluginTest_1Plugin.getPlatformVersion(), '42');
  });

  test('getPlatformName', () async {
    PluginTest_1 pluginTest_1Plugin = PluginTest_1();
    MockPluginTest_1Platform fakePlatform = MockPluginTest_1Platform();
    PluginTest_1Platform.instance = fakePlatform;

    expect(await pluginTest_1Plugin.getPlatformVersion(), '42');
  });
}
