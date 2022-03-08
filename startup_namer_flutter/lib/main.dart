import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: Image(
            image: NetworkImage(
                "https://pbs.twimg.com/media/Eu7kZRRWgAMJjj8?format=png&name=large"),
          ),
          // child: Text('Hello World'),
        ),
      ),
    );
  }
}
