import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                style: TextButton.styleFrom(
                  primary: Colors.amber,
                  backgroundColor: Colors.red,
                ),
              ),
              TextButton(
                child: const Text('B'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                style: TextButton.styleFrom(
                  primary: Colors.red,
                  backgroundColor: Colors.orange,
                ),
              ),
              TextButton(
                child: const Text('C'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                style: TextButton.styleFrom(
                  primary: Colors.red,
                  backgroundColor: Colors.yellow,
                ),
              ),
              TextButton(
                child: const Text('D'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                style: TextButton.styleFrom(
                  primary: Colors.amber,
                  backgroundColor: Colors.green,
                ),
              ),
              TextButton(
                child: const Text('E'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                style: TextButton.styleFrom(
                  primary: Colors.amber,
                  backgroundColor: Colors.blueGrey.shade600,
                ),
              ),
              TextButton(
                child: const Text('F'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                style: TextButton.styleFrom(
                  primary: Colors.amber,
                  backgroundColor: Colors.lightBlue,
                ),
              ),
              TextButton(
                child: const Text('G'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
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
