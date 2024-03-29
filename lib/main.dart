import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:learn_english/pages/home_page.dart';
import 'package:learn_english/value/app_assets.dart';
import 'package:learn_english/widgets/item_topic.dart';

void main() {
  runApp(DevicePreview(builder: (context)=>MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  HomePage(),
    );
  }
}
