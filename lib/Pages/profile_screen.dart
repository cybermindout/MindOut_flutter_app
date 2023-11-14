// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, title: Text('Profile')),
      backgroundColor: Colors.black,
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/proflie.jpg',
                ),
                radius: 100,
                backgroundColor: Colors.yellow,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Name : Ashwin P K",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 20,
              ),
              Text("Gender : Male",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 20,
              ),
              Text("Email : cybermindout@gmail.com",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
