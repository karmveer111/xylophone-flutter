import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({required int soundNumber, required Color keyColor}) {
    //input soundnumber and color, output: widget,
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: keyColor,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(),
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
              buildKey(soundNumber: 1, keyColor: Colors.purple),
              buildKey(soundNumber: 2, keyColor: Colors.indigo),
              buildKey(soundNumber: 3, keyColor: Colors.blue),
              buildKey(soundNumber: 4, keyColor: Colors.green),
              buildKey(soundNumber: 5, keyColor: Colors.yellow),
              buildKey(soundNumber: 6, keyColor: Colors.orange),
              buildKey(soundNumber: 7, keyColor: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
