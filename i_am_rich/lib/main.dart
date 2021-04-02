import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: Center(child: Text('welcome To My App')),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('Images/IMG_20210211_084019~3.jpg'),
            width: 150,
            height: 150,
          ),
        ),
      ),
    ),
  );
}
