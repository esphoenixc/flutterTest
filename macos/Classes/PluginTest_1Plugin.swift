import Cocoa
import FlutterMacOS

public class PluginTest_1Plugin: NSObject, FlutterPlugin {

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "plugin_test_1", binaryMessenger: registrar.messenger)
    let instance = PluginTest_1Plugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("macOS ㅎㅎㅎsss " + ProcessInfo.processInfo.operatingSystemVersionString)
    case "getPlatformName":
        result("platform 네임입니다~~~ \(Test.sayTestValue())")
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
