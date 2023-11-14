// ignore_for_file: no_leading_underscores_for_local_identifiers, use_build_context_synchronously, prefer_const_constructors

import 'package:cybermindout/Pages/home_page.dart';
import 'package:cybermindout/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isDataMatched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/MindOut.png'),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    labelText: 'Username'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    labelText: 'Password'),
              ),
              SizedBox(height: 10),
              Visibility(
                visible: !_isDataMatched,
                child: Text(
                  'Username password does not match',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  checkLogin();
                },
                icon: const Icon(Icons.login),
                label: const Text('Login'),
              ),

              //signup button
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //sign up button
                  TextButton(
                    onPressed: () {},
                    child: Text("SignUp"),
                  ),

                  Text(
                    "/",
                    style: TextStyle(fontSize: 20),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: Text("Forgot password"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void checkLogin() async {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == "ashwin" && _password == "1234") {
      final _shareprefs = await SharedPreferences.getInstance();
      await _shareprefs.setBool(SAVE_KEY_NAME, true);

      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => HomeScreen()));
    } else {
      setState(() {
        _isDataMatched = false;
      });
    }
  }
}
