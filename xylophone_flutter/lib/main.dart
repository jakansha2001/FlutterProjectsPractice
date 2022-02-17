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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              TextButton(
                child: const Text('A'),
                onPressed: () {
                  playSound(1);
                },
                style: TextButton.styleFrom(
                  primary: Colors.amber,
                  backgroundColor: Colors.red,
                ),
              ),
              TextButton(
                child: const Text('B'),
                onPressed: () {
                  playSound(2);
                },
                style: TextButton.styleFrom(
                  primary: Colors.red,
                  backgroundColor: Colors.orange,
                ),
              ),
              TextButton(
                child: const Text('C'),
                onPressed: () {
                  playSound(3);
                },
                style: TextButton.styleFrom(
                  primary: Colors.red,
                  backgroundColor: Colors.yellow,
                ),
              ),
              TextButton(
                child: const Text('D'),
                onPressed: () {
                  playSound(4);
                },
                style: TextButton.styleFrom(
                  primary: Colors.amber,
                  backgroundColor: Colors.green,
                ),
              ),
              TextButton(
                child: const Text('E'),
                onPressed: () {
                  playSound(5);
                },
                style: TextButton.styleFrom(
                  primary: Colors.amber,
                  backgroundColor: Colors.teal,
                ),
              ),
              TextButton(
                child: const Text('F'),
                onPressed: () {
                  playSound(6);
                },
                style: TextButton.styleFrom(
                  primary: Colors.amber,
                  backgroundColor: Colors.lightBlue,
                ),
              ),
              TextButton(
                child: const Text('G'),
                onPressed: () {
                  playSound(7);
                },
                style: TextButton.styleFrom(
                  primary: Colors.yellow,
                  backgroundColor: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
