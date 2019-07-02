import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Widget buildkey(int Num, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(Num);
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
            children: <Widget>[
              buildkey(1, Colors.red),
              buildkey(2, Colors.yellow),
              buildkey(3, Colors.green),
              buildkey(4, Colors.teal),
              buildkey(5, Colors.purple),
              buildkey(6, Colors.blue),
              buildkey(7, Colors.orange),
            ],
          ),
        ),
      ),
    );
  }
}
