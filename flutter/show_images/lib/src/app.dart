import 'package:flutter/material.dart';
import 'models/image_model.dart';
import './widgets/image_list.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'dart:async';

class App extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return AppState();
  }

}
class AppState extends State<App> {

  int _counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async{
    _counter++;
     print("Fazendo requisição...");
     final response = await get('https://jsonplaceholder.typicode.com/photos/$_counter');
     final ImageModel imgModel = ImageModel.fromJson(jsonDecode(response.body));
     setState(() {
       images.add(imgModel);
     });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Let's see images!"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: fetchImage, // Referencia para a funcao
          backgroundColor: Colors.pink,
          label: Text("Add Image"),
          icon: Icon(
            Icons.add,
          )
        ),
        body: ListImage(images),
      ),
    );
  }
}

List<Widget> renderCardList(){

}