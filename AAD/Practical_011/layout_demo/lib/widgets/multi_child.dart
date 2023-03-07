// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MultiChild extends StatelessWidget {
  const MultiChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Example of multi child widget: Listview",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2)),
            height: 300,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text('Card ${index + 1}'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Example of multi child widget: GridView",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2)),
            height: 300,
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text('Card ${index + 1}'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
