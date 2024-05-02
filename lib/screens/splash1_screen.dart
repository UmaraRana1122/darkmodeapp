import 'dart:async';

import 'package:darkmodeapp/screens/register_screen.dart';
import 'package:darkmodeapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash1Screen extends StatefulWidget {
  const Splash1Screen({super.key});

  @override
  State<Splash1Screen> createState() => _Splash1ScreenState();
}

class _Splash1ScreenState extends State<Splash1Screen> {

  Future<void> keepAlwaysLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? ifLogin = prefs.getBool('is_user_login');
    if (ifLogin == true) {
      Timer(const Duration(seconds: 8), () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => RegisterScreen(
                      // selectedPage: 0,
                    )));
      });
      setState(() {});
    } else {
      Timer(const Duration(seconds: 8), () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const WelcomeScreen(),
            ));
        setState(() {});
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey.shade800,
              Colors.grey.shade900,
              Colors.grey.shade900,
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.all(90.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/logsplash.gif"),
            ],
          ),
        ),
      ),
    ));
  }
}
