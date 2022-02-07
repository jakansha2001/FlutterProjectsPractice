import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Image(
            image: AssetImage('images/coal.png'),
          ),
        ),
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'I am Poor',
            ),
          ),
          backgroundColor: Colors.amber,
        ),
      ),
    ),
  );
}
