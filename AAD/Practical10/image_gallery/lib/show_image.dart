import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  late String image;
  ShowImage(this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image View"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SizedBox(
          height: 400,
          width: 400,
          child: Card(
            elevation: 5,
            child: Image.asset(
              'assets/images/${image}',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
