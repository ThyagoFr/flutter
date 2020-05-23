import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MQTT + Flutter"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: HomeScreen()
        ),
      );
  }
}