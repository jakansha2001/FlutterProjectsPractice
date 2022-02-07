import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      //widget tree
      home: Scaffold(
        body: const Center(
          child: Image(
            image: AssetImage('images/diamond_image.jpg'),
          ),
        ),
        backgroundColor: Colors.white12,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'I am Rich',
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
      ),
    ),
  );
}
