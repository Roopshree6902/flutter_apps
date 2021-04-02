import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.pink, soundNumber: 1),
              buildkey(color: Colors.lime, soundNumber: 2),
              buildkey(color: Colors.teal, soundNumber: 3),
              buildkey(color: Colors.red, soundNumber: 4),
              buildkey(color: Colors.green, soundNumber: 5),
              buildkey(color: Colors.indigo, soundNumber: 6),
              buildkey(color: Colors.blueAccent, soundNumber: 7),
            ], //children
          ),
        ),
      ),
    );
  }
}
