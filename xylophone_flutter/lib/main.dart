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
                child: const Text('Akku'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                style: TextButton.styleFrom(
                  primary: Colors.purple,
                  backgroundColor: Colors.amber,
                ),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                child: const Text('Click Me'),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                child: const Text('Click Me'),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                child: const Text('Click Me'),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                child: const Text('Click Me'),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                child: const Text('Click Me'),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                child: const Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
