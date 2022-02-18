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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  child: const Text(''),
                  onPressed: () {
                    playSound(1);
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.amber,
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(''),
                  onPressed: () {
                    playSound(2);
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                    backgroundColor: Colors.orange,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(''),
                  onPressed: () {
                    playSound(3);
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                    backgroundColor: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(''),
                  onPressed: () {
                    playSound(4);
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.amber,
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(''),
                  onPressed: () {
                    playSound(5);
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.amber,
                    backgroundColor: Colors.teal,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(''),
                  onPressed: () {
                    playSound(6);
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.amber,
                    backgroundColor: Colors.lightBlue,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: const Text(''),
                  onPressed: () {
                    playSound(7);
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.yellow,
                    backgroundColor: Colors.purple,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
