import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MagicBallPage());
}

class MagicBallPage extends StatelessWidget {
  const MagicBallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: const Center(
              child: Text(
                'Ask Me Anything',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38.0,
                ),
              ),
            ),
          ),
          body: const MagicBall(),
        ),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int clickImage = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    clickImage = Random().nextInt(5) + 1;
                  },
                );
              },
              child: Image.asset(
                'images/ball$clickImage.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
