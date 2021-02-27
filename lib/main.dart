import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildKey(int num, Color col) {
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red[400]),
              buildKey(2, Colors.green[400]),
              buildKey(3, Colors.yellow[400]),
              buildKey(4, Colors.blue[400]),
              buildKey(5, Colors.pink[400]),
              buildKey(6, Colors.teal[400]),
              buildKey(7, Colors.purple[400]),
            ],
          ),
        ),
      ),
    );
  }
}
