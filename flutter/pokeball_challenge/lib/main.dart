import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Pokeball"),
            backgroundColor: Colors.black,
            centerTitle: true,
          ),
          backgroundColor: Colors.blueGrey,
          body: Center(
            child: Image(
              image: AssetImage("images/pokeball.png"),
            ),
          ),
        ),
      ),
    );
