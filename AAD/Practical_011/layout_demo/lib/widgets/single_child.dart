// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SingleChild extends StatelessWidget {
  const SingleChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "This is a single child widget",
              style: TextStyle(fontSize: 36),
            ),
          ),
        ),
      ),
    );
  }
}
