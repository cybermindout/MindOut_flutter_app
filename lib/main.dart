// ignore_for_file: prefer_const_constructors, constant_identifier_names

import 'package:cybermindout/Pages/splash_screen.dart';
import 'package:flutter/material.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MindOut',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
