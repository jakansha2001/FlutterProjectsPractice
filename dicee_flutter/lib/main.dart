import 'package:flutter/material.dart';
import 'dart:math';

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
          backgroundColor: Colors.redAccent,
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: const Center(
              child: Text(
                'Dicee',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          body: const DicePage(),
        ),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      //leftDiceNumber = 3;
      //If we don't write setState() then the image will not be set on Press of the dice. Also wherever leftDiceNumber is written the value gets updated.
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      // 0-5 but we don't need 0 so we can add 1 to this to make the range as 1-6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                  // leftDiceNumber = 3;
                  // print('Dice Number = $leftDiceNumber');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image(
                  image: AssetImage('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*class DicePage extends StatelessWidget {
  DicePage({Key? key}) : super(key: key);

  //var leftDiceNumber = 5;   //no changes will be reflected because build() is reloaded on Hot Reload
  int leftDiceNumber = 5;
  //if we write it inside build() then it will be instantiated again and again.

  @override
  Widget build(BuildContext context) {
    //var leftDiceNumber = 5;
    leftDiceNumber = 2;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //Expanded to fill the entire horizontal space because we are in a Row (try using Column: fills entire vertical space)
            //flex: 2,    //puts the two images in a ratio of 2:1 on the screen in a Row (if we don't use this property then equal ratio => flex:1 for both)
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  // print(
                  //     'Left button is pressed!'); //prints on console (Run console)
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ), //Instead of writing the below code simply write this
          // Image(
          //   image: AssetImage('images/dice1.png'),
          //   //height: 200.0,    //hardcoded; if user puts his/her phone in landscape then this will be hardcoded.
          //   //width: 200.0,
          // ),
          Expanded(
            //Expanded to fill the entire horizontal space because we are in a Row (try using Column: fills entire vertical space)
            //flex: 1,    //puts the two images in a ratio of 2:1 on the screen in a Row (if we don't use this property then equal ratio => flex:1 for both)
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: const Image(
                  image: AssetImage('images/dice2.png'),
                  //height: 200.0,    //hardcoded; if user puts his/her phone in landscape then this will be hardcoded.
                  //width: 200.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/
