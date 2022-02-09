import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  //var leftDiceNumber = 5;   //no changes will be reflected because build() is reloaded on Hot Reload

  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;
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