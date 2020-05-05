import 'package:flutter/material.dart';
import "../models/image_model.dart";

class ListImage extends StatelessWidget{
  final List<ImageModel> images ;

  ListImage(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        return buildImageContainer(images[index]);
      },
    );
  }
  
  Widget buildImageContainer(ImageModel image){
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black
        )
      ),
      child: Column(
        children : <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Image.network(image.url),
          ),
          Text(image.title)
        ])
    );
  }
}