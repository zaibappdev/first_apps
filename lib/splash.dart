import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:first_apps/Authentication/login.dart';
import 'Home/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  static FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      if (auth.currentUser != null) {
        Navigator.of(
          context,
        ).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
      } else {
        Navigator.of(
          context,
        ).pushReplacement(MaterialPageRoute(builder: (context) => Login()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Logo
            Image.asset("assets/image.png", height: 250, width: 250),

            SizedBox(height: 30),
            Text(
              'بِسْمِ ٱللَّٰهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
                fontFamily: 'Amiri',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
