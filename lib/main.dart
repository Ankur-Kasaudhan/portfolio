// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPAge(),
      debugShowCheckedModeBanner: false,
    );
  }
}
