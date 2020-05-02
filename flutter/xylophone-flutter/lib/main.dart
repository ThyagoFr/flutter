import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _generateButtons()
          ),
        ),
      ),
    );
  }
}

List<Widget> _generateButtons() {
  List<Widget> widgets = [];
  List<Color> colors = [Colors.red,Colors.orange,Colors.yellow,
  Colors.green,Colors.teal,Colors.blue,Colors.purple];
  for (var index = 1; index < 8;index++){
    widgets.add(
      Expanded(
        child: FlatButton(
          onPressed: () {
            final player = AudioCache();
            player.play("note$index.wav");
          },
          color: colors[index-1],
        ),
      )
    );
  }
  return widgets;
}

