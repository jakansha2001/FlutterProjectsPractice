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
          backgroundColor: Colors.teal,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/Professional_Pic.jpeg'),
                  //backgroundColor: Colors.red,
                ),
                const Text(
                  'Akansha Jain',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                  ),
                ),
                const Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white54,
                    fontFamily: 'SourceSansPro-Bold',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  color: Colors.white38,
                  width: 140.0,
                  height: 2.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.white,
                  width: 300.0,
                  height: 50.0,
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Text(
                        '+91 7495824***',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  color: Colors.white,
                  width: 300.0,
                  height: 50.0,
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.mail,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Text(
                        'jakansha2001@gmail.com',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*class Tanish extends StatefulWidget {
  const Tanish({Key? key}) : super(key: key);

  @override
  _TanishState createState() => _TanishState();
}

class _TanishState extends State<Tanish> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Text('Hello World'),
        ),
      ),
    );
  }
}*/
