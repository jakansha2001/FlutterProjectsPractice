import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.email}) : super(key: key);
  final String email;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/avatar.jpg'),
              //backgroundColor: Colors.red,
            ),
            SizedBox(
              height: 10.0,
            ),
            const Text(
              'User',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.teal,
                fontFamily: 'Pacifico',
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 20.0,
                //color: Colors.white54,
                color: Colors.teal.shade400,
                fontFamily: 'SourceSansPro-Bold',
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade400,
                thickness: 2.0,
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
                    'usermailid@gmail.com',
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
    );
  }
}
