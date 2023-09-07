import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:plugin_test_1/plugin_test_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  String _platformName = 'Unknown';
  final _pluginTest_1Plugin = PluginTest_1();

  @override
  void initState() {
    super.initState();
    initPlatformState();
    getPlatformName();
  }

  Future<void> getPlatformName() async {
    String platformName;
    try {
      platformName = await _pluginTest_1Plugin.getPlatformName() ??
          'Unknown platform name';
    } on PlatformException {
      platformName = 'Failed to get platform name.';
    }

    if (!mounted) return;

    setState(() {
      _platformName = platformName;
    });
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion = await _pluginTest_1Plugin.getPlatformVersion() ??
          'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center the column vertically
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center the items horizontally
            children: <Widget>[
              Text('Running on: $_platformVersion'),
              const SizedBox(
                  height: 10), // Add some spacing between the two texts
              Text('Platform Name: $_platformName'),
            ],
          ),
        ),
      ),
    );
  }
}
