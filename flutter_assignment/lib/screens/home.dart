import 'package:flutter/material.dart';
import 'package:flutter_assignment/widgets/text_widget.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool pressOn = false;

  void textControl() {
    setState(() {
      pressOn = !pressOn;
      pressOn = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Center(
        child: Column(
          children: [
            Text(pressOn ? 'Hey there!' : 'Hello!'),
            ElevatedButton(
              onPressed: pressOn ? null : textControl,
              // style: ButtonStyle(
              //   backgroundColor: pressOn
              //       ? MaterialStateProperty.all(Colors.grey)
              //       : MaterialStateProperty.all(Colors.blueAccent),
              // ),
              child: const TextWidget(),
            )
          ],
        ),
      ),
    );
  }
}
