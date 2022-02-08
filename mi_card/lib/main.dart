import 'package:flutter/cupertino.dart';
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
              //crossAxisAlignment: CrossAxisAlignment.center,
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
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontSize: 20.0,
                    //color: Colors.white54,
                    color: Colors.teal.shade100,
                    fontFamily: 'SourceSansPro-Bold',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
                // const SizedBox(
                //   height: 10.0,
                // ),
                // Container(
                //   color: Colors.white38,
                //   width: 140.0,
                //   height: 2.0,
                // ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                    thickness: 2.0,
                  ),
                ),
                // const SizedBox(
                //   height: 20.0,
                // ),
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 40.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        // SizedBox(
                        //   width: 10.0,
                        // ),
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
                            fontFamily: 'SourceSansPro-Bold',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Container(
                //   color: Colors.white,
                //   width: 300.0,
                //   height: 50.0,
                //   child: Row(
                //     children: const [
                //       SizedBox(
                //         width: 10.0,
                //       ),
                //       Icon(
                //         Icons.phone,
                //         color: Colors.teal,
                //       ),
                //       SizedBox(
                //         width: 30.0,
                //       ),
                //       Text(
                //         '+91 7495824***',
                //         style: TextStyle(
                //           fontSize: 18.0,
                //           color: Colors.teal,
                //           fontFamily: 'SourceSansPro-Bold',
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
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
                          fontFamily: 'SourceSansPro-Bold',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+91 7495824***',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.teal,
                        fontFamily: 'SourceSansPro-Bold',
                      ),
                    ),
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
