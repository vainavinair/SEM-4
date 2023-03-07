// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layouts In Flutter"),
      ),
      body: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            margin: EdgeInsets.all(5),
            child: Card(
              child: Text(
                "Card: A Single Child widget",
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Example of multi child widget: Listview",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Expanded(
              child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.teal[600],
                child: const Center(child: Text('Entry A')),
              ),
              Container(
                height: 50,
                color: Colors.teal[500],
                child: const Center(child: Text('Entry B')),
              ),
              Container(
                height: 50,
                color: Colors.teal[400],
                child: const Center(child: Text('Entry C')),
              ),
            ],
          )),
          Text(
            "Example of multi child widget: Gridview",
            style: TextStyle(fontSize: 18),
          ),
          Container(
            height: 350,
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 2)),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
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
