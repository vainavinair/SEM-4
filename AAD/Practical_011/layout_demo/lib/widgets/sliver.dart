// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SliverWidgets extends StatelessWidget {
  const SliverWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('My App'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // open the search screen
                },
              ),
            ],
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://cdn.discordapp.com/attachments/492588947839516672/1079475281716318239/cat-computer.gif",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            children: List.generate(
              20,
              (index) {
                return Container(
                  color: Colors.green[100],
                  child: Center(
                    child: Text('Item $index'),
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
