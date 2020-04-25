import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        backgroundColor: Colors.green[500],
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.red])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage ('images/perfil.png'),
                ),
                Text(
                  "Thyago Freitas",
                  style: TextStyle(
                    fontFamily: "Source Sans Pro",
                    fontSize: 35.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "COMPUTER ENGINEER",
                  style: TextStyle(
                    fontFamily: "Source Sans Pro",
                    fontSize: 20.0,
                    color: Colors.white,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 300.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical:10.0,horizontal: 25.0),
                    child: ListTile(
                      leading:  Icon (
                        Icons.phone,
                        color: Colors.black,
                      ),
                      title: Text(
                        "+55 (85) 98653 - 3352",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: "Source Sans Pro"
                        ),
                      ),
                    ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical:10.0,horizontal: 25.0),
                  child: ListTile(
                    leading:  Icon (
                      Icons.email,
                      color: Colors.black,
                    ),
                    title: Text(
                      "thyagofr@alu.ufc.br",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: "Source Sans Pro"
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
