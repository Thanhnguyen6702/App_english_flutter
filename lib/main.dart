import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:learn_english/pages/home_page.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const HomePage(),
    );
  }
}
