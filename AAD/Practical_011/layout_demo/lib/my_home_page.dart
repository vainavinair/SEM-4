// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:layout_demo/widgets/multi_child.dart';
import 'package:layout_demo/widgets/single_child.dart';
import 'package:layout_demo/widgets/sliver.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A demo for flutter layouts"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SingleChild();
                      },
                    ));
                  },
                  child: Text("Single Child Widget")),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MultiChild();
                      },
                    ));
                  },
                  child: Text("Multi Child Widgets")),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SliverWidgets();
                        },
                      ));
                    },
                    child: Text("Sliver Widgets")))
          ],
        ),
      ),
    );
  }
}
