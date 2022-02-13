import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

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
          backgroundColor: Colors.blue,
          body: Center(
            child: Text(
              nouns.first,
              style: const TextStyle(
                color: Colors.yellow,
                fontSize: 50.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
