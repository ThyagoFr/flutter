import 'package:flutter/material.dart';

// The main functions is the starting point for all our Flutter apps.
void main() => runApp(
      MaterialApp(
        home: Scaffold (
          appBar: AppBar(
            title: Text("I am Rich"),
            backgroundColor: Colors.blueGrey[900],
          ),
        backgroundColor: Colors.blueGrey,
        body: Center(
            child : Image (
              image: AssetImage("images/img.png"),
            ),
          ),
        ),
      ),
    );