// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lovestorm/screens/calculator_screen.dart';
import 'package:lovestorm/screens/home_screen.dart';

void main() {
  runApp(const LoveStorm());
}

class LoveStorm extends StatelessWidget {
  const LoveStorm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoveStorm',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/calculator': (context) => LoveCalculator(),
      },
    );
  }
}
