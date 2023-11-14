// ignore_for_file: no_leading_underscores_for_local_identifiers, use_build_context_synchronously, unnecessary_cast, prefer_const_constructors

import 'package:cybermindout/Pages/home_page.dart';
import 'package:cybermindout/Pages/login_page.dart';
import 'package:cybermindout/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkUserLoggedIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Image.network(
              'https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExaml0eXB3NDg5eHVmbGp6bXZ3eW1rd3R2ODdjOHkyYWhpcjBuYzBhMSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/iJmDndjwTydcPEeu3p/giphy.gif'),
        ));
  }

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context as BuildContext).pushReplacement(MaterialPageRoute(
      builder: (ctx) => LoginScreen(),
    ));
  }

  Future<void> checkUserLoggedIn() async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    final _userLoggedIn = _sharedPrefs.getBool(SAVE_KEY_NAME);
    if (_userLoggedIn == null || _userLoggedIn == false) {
      gotoLogin();
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => HomeScreen()));
    }
  }
}
