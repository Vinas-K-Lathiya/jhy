import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, 'home');
      },
    );
    return Scaffold(
      body: SizedBox(
          height: MediaQuery.of(context).size.height / 1,
          width: double.infinity,
          child: Image.asset(
            "images/Splash Screen.webp",fit: BoxFit.fill,
            scale: 3,
          )),
    );
  }
}
