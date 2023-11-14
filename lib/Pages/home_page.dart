// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:cybermindout/Pages/login_page.dart';
import 'package:cybermindout/Pages/profile_screen.dart';
import 'package:cybermindout/Pages/settings_screen.dart';
import 'package:cybermindout/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  var likeColor1 = Colors.white;
  var likeColor2 = Colors.white;
  var likeColor3 = Colors.white;
  var likeColor4 = Colors.white;
  var likeColor5 = Colors.white;

  //Color card 1
  void changeColorfav1() {
    setState(() {
      if (likeColor1 == Colors.white) {
        likeColor1 = Colors.red;
      } else {
        likeColor1 = Colors.white;
      }
    });
  }

//Color card 2
  void changeColorfav2() {
    setState(() {
      if (likeColor2 == Colors.white) {
        likeColor2 = Colors.red;
      } else {
        likeColor2 = Colors.white;
      }
    });
  }

  //Color card 3
  void changeColorfav3() {
    setState(() {
      if (likeColor3 == Colors.white) {
        likeColor3 = Colors.red;
      } else {
        likeColor3 = Colors.white;
      }
    });
  }

  //Color card 4

  void changeColorfav4() {
    setState(() {
      if (likeColor4 == Colors.white) {
        likeColor4 = Colors.red;
      } else {
        likeColor4 = Colors.white;
      }
    });
  }

  //Color card 5

  void changeColorfav5() {
    setState(() {
      if (likeColor5 == Colors.white) {
        likeColor5 = Colors.red;
      } else {
        likeColor5 = Colors.white;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text("Ashwin P K"),
              accountEmail: Text("cybermindout@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/proflie.jpg'),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              iconColor: Colors.white,
              title: const Text(
                "Profile",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
              iconColor: Colors.white,
              title: const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              onTap: () {
                logOutBox(context);
              },
              iconColor: Colors.white,
              title: const Text(
                "Logout",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "MindOut",
          style: TextStyle(fontSize: 19),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
          const Padding(padding: EdgeInsets.all(5)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.bubble_chart_outlined)),
          const Padding(padding: EdgeInsets.all(5)),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Divider(
              color: const Color.fromARGB(255, 86, 81, 81),
              thickness: 1,
            ),

            //card 1

            Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(
                        'assets/images/proflie.jpg',
                      )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          )),
                      title: Text("Ashwin P K"),
                      subtitle: Text("just now"),
                      textColor: Colors.white,
                    ),
                    Image.asset(
                      'assets/images/flutter.png',
                    ),
                    ListTile(
                      title: Text(
                        "Chill with Flutter",
                      ),
                      textColor: Colors.white,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            changeColorfav1();
                          },
                          icon: Icon(
                            Icons.favorite,
                          ),
                          color: likeColor1,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.comment_rounded),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.send),
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            //Card 2
            Divider(
              color: const Color.fromARGB(255, 86, 81, 81),
              thickness: 1,
            ),

            Card(
              color: Colors.black,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(
                        'assets/images/MindOut.png',
                      )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          )),
                      title: Text("Cyber"),
                      subtitle: Text("15 min ago"),
                      textColor: Colors.white,
                    ),
                    Image.asset(
                      'assets/images/youtube.jpg',
                    ),
                    ListTile(
                      title: Text(
                        "New Video Uploded",
                      ),
                      textColor: Colors.white,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            changeColorfav2();
                          },
                          icon: Icon(
                            Icons.favorite,
                          ),
                          color: likeColor2,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.comment_rounded),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.send),
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            Divider(
              color: const Color.fromARGB(255, 86, 81, 81),
              thickness: 1,
            ),

            //Card 3

            Card(
              color: Colors.black,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(
                        'assets/images/alto.jpg',
                      )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          )),
                      title: Text("Alto B Puthethu"),
                      subtitle: Text("1 hour ago"),
                      textColor: Colors.white,
                    ),
                    Image.asset(
                      'assets/images/adv.png',
                    ),
                    ListTile(
                      title: Text(
                        "Let's start the ride",
                      ),
                      textColor: Colors.white,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            changeColorfav3();
                          },
                          icon: Icon(
                            Icons.favorite,
                          ),
                          color: likeColor3,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.comment_rounded),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.send),
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

            Divider(
              color: const Color.fromARGB(255, 86, 81, 81),
              thickness: 1,
            ),

            //Card 4

            Card(
              color: Colors.black,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(
                        'assets/images/basil.png',
                      )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          )),
                      title: Text("Basil Benny"),
                      subtitle: Text("20 hour ago"),
                      textColor: Colors.white,
                    ),
                    Image.asset(
                      'assets/images/data.png',
                    ),
                    ListTile(
                      title: Text(
                        "Let's Explore the way of Data Science",
                      ),
                      textColor: Colors.white,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            changeColorfav4();
                          },
                          icon: Icon(
                            Icons.favorite,
                          ),
                          color: likeColor4,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.comment_rounded),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.send),
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

            Divider(
              color: const Color.fromARGB(255, 86, 81, 81),
              thickness: 1,
            ),

            //Card 5

            Card(
              color: Colors.black,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(
                        'assets/images/yakoob.png',
                      )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          )),
                      title: Text("Yakoob"),
                      subtitle: Text("24 hour ago"),
                      textColor: Colors.white,
                    ),
                    Image.asset(
                      'assets/images/hack.png',
                    ),
                    ListTile(
                      title: Text(
                        "Let's penetrate something",
                      ),
                      textColor: Colors.white,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            changeColorfav5();
                          },
                          icon: Icon(
                            Icons.favorite,
                          ),
                          color: likeColor5,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.comment_rounded),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.send),
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // alert box start n

  void logOutBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: Border.all(color: Colors.white),
            backgroundColor: Colors.black,
            title: Text(
              "Logout",
              style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
            ),
            content: Text(
              "Do you want to leave ?",
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    signout(context);
                  },
                  child: Text("Yes")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("No")),
            ],
          );
        });
  }

  signout(context) async {
    final _shareprefs = await SharedPreferences.getInstance();
    await _shareprefs.clear();

    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => LoginScreen()), (route) => false);
    _shareprefs.setBool(SAVE_KEY_NAME, false);
  }
}
