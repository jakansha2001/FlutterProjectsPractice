import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Row(
                children: const [
                  Text('Text 1'),
                  Icon(Icons.star),
                ],
              ),
              const Text('Text 2'),
            ],
          ),
        ),
      ),
    );
  }
}
