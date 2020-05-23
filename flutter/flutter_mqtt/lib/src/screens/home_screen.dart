import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          temperatureCard(),
          temperatureCard(),
          temperatureCard()
        ],
    );
  }

  Widget temperatureCard () {
    return Container(
      height: 200,
      child: Card(
        color: Colors.green[600],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(
                Icons.dashboard, 
                size: 50
                ),
              title: Text('Heart Shaker'),
              subtitle: Text('TWICE'),
            ),
          ],
        ),
  ),
    );
  }

}