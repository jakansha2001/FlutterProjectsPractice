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
          body: Center(
            child: TextButton(
              onPressed: () {
                final player = AudioCache();
                player.play('assets_note3.wav');
              },
              child: const Text('Click Me'),
            ),
          ),
        ),
      ),
    );
  }
}
