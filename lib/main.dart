import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({required int soundNumber, required Color keycolor}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: keycolor),
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNumber: 1, keycolor: Colors.purple),
              buildKey(soundNumber: 2, keycolor: Colors.indigo),
              buildKey(soundNumber: 3, keycolor: Colors.blue),
              buildKey(soundNumber: 4, keycolor: Colors.green),
              buildKey(soundNumber: 5, keycolor: Colors.yellow),
              buildKey(soundNumber: 6, keycolor: Colors.orange),
              buildKey(soundNumber: 7, keycolor: Colors.red),
              // Expanded(
              //   child: TextButton(
              //     onPressed: () {
              //       playSound(1);
              //     },
              //     child: Container(
              //       color: Colors.purple,
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     onPressed: () {
              //       playSound(2);
              //     },
              //     child: Container(
              //       color: Colors.blue[900],
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     onPressed: () {
              //       playSound(3);
              //     },
              //     child: Container(
              //       color: Colors.blue,
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     onPressed: () {
              //       playSound(4);
              //     },
              //     child: Container(
              //       color: Colors.green[900],
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     onPressed: () {
              //       playSound(5);
              //     },
              //     child: Container(
              //       color: Colors.yellow,
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     onPressed: () {
              //       playSound(6);
              //     },
              //     child: Container(
              //       color: Colors.orange,
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     onPressed: () {
              //       final player = AudioCache();
              //       player.play('note7.wav');
              //     },
              //     child: Container(
              //       color: Colors.red,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
