import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  String myColor;

  Expanded myKey({int num, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$num.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              myKey(num: 1, color: Colors.red),
              myKey(num: 2, color: Colors.orange),
              myKey(num: 3, color: Colors.yellow),
              myKey(num: 4, color: Colors.green),
              myKey(num: 5, color: Colors.teal),
              myKey(num: 6, color: Colors.blue),
              myKey(num: 7, color: Colors.purple),
              Center(child: Text('© Aditya Birangal'))
            ],
          ),
        ),
      ),
    );
  }
}
