import 'package:flutter/material.dart';
import 'package:jhy/screen/Home.dart';
import 'package:jhy/screen/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    routes: {
      '/': (context) => Splash(),
      'home': (context) => Home(),
    },
  ));
}
