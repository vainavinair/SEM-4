// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import './show_image.dart';

class ImageGallery extends StatefulWidget {
  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  List<String> images = [];
  int i = 0;
  @override
  void initState() {
    super.initState();
    while (i < 18) {
      images.add("image_${i}.png");
      i++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Image Gallery"),
        ),
        body: Container(
          color: Theme.of(context).primaryColor,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 5),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 16,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/${images[index]}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ShowImage(images[index]);
                    }));
                  },
                );
              }),
        ));
  }
}
