import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceNumber = 1;
  int rightdiceNumber = 1;

  void randomDice() {
    setState(() {
      leftdiceNumber = Random().nextInt(6) + 1; // 0 - 5
      rightdiceNumber = Random().nextInt(6) + 1; // 0 - 5
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomDice();
              } ,
              child: Image.asset("images/dice$leftdiceNumber.png")
            )
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                  randomDice();
              } ,
              child: Image.asset("images/dice$rightdiceNumber.png")
            )
          ),
        ],
      ),
    );
  }
}
