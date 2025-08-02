// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:mindease_app/Welcome.dart';
import 'package:mindease_app/Splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MindEase',
      theme: ThemeData(),
      home: const Welcome(),
    );
  }
}
