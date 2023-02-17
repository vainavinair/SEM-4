// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'image_gallery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xff9F8772),
          appBarTheme: AppBarTheme(color: Colors.brown)),
      home: ImageGallery(),
    );
  }
}
