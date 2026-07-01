import 'package:flutter/material.dart';

void main() {
  //MaterialApp is a widget that wraps a number of widgets that are commonly required for material design applications.
  //Scaffold implements the basic material design visual layout structure.

  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('فكرة'), backgroundColor: Colors.blue[900]),
        body: Center(child: Image(image: AssetImage("images/idea.png"))),
        backgroundColor: Colors.blue[200],
      ),
    ),
  );
}
