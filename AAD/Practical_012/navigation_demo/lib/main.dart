// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navigation_demo/third_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.brown),
        title: 'Navigation Demo',
        home: HomeScreen(),
        initialRoute: '/',
        routes: {
          '/third': (context) => (ThirdScreen()),
        });
  }
}
