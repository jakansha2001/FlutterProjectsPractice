import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded buildKey({Color color = Colors.red, int soundNumber = 0}) {
    return Expanded(
      child: TextButton(
        child: const Text(''),
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(
          // primary: Colors.amber,
          // backgroundColor: Colors.red,
          primary: Colors.amber,
          backgroundColor: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
              // Expanded(
              //   child: TextButton(
              //     child: const Text(''),
              //     onPressed: () {
              //       playSound(2);
              //     },
              //     style: TextButton.styleFrom(
              //       primary: Colors.red,
              //       backgroundColor: Colors.orange,
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     child: const Text(''),
              //     onPressed: () {
              //       playSound(3);
              //     },
              //     style: TextButton.styleFrom(
              //       primary: Colors.red,
              //       backgroundColor: Colors.yellow,
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     child: const Text(''),
              //     onPressed: () {
              //       playSound(4);
              //     },
              //     style: TextButton.styleFrom(
              //       primary: Colors.amber,
              //       backgroundColor: Colors.green,
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     child: const Text(''),
              //     onPressed: () {
              //       playSound(5);
              //     },
              //     style: TextButton.styleFrom(
              //       primary: Colors.amber,
              //       backgroundColor: Colors.teal,
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     child: const Text(''),
              //     onPressed: () {
              //       playSound(6);
              //     },
              //     style: TextButton.styleFrom(
              //       primary: Colors.amber,
              //       backgroundColor: Colors.lightBlue,
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     child: const Text(''),
              //     onPressed: () {
              //       playSound(7);
              //     },
              //     style: TextButton.styleFrom(
              //       primary: Colors.yellow,
              //       backgroundColor: Colors.purple,
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
