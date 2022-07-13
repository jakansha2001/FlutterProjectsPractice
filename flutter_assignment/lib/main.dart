import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/home.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Home(name: 'Flutter Assignment',),
    );
  }
}
