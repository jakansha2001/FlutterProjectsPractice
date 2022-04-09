import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'dart:convert';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

final Uri apiUrl = Uri.parse("https://randomuser.me/api/?results=35"); //String

Future<List<dynamic>> fetchUsers() async {
  var result = await http.get(apiUrl);
  return json.decode(result.body)['results'];
}

String _name(dynamic user) {
  return user['name']['title'] +
      " " +
      user['name']['first'] +
      " " +
      user['name']['last'];
}

String _location(dynamic user) {
  return user['location']['country'];
}

String _age(Map<dynamic, dynamic> user) {
  return "Age: " + user['dob']['age'].toString();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: fetchUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              print(_age(snapshot.data[0]));
              return ListView.builder(
                  //controller: _scrollController,
                  padding: EdgeInsets.all(10),
                  //itemExtent: 80,
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            minVerticalPadding: 51,
                            leading: CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    snapshot.data[index]['picture']['large'])),
                            title: Text(_name(snapshot.data[index])),
                            subtitle: Text(_location(snapshot.data[index])),
                            trailing: Text(_age(snapshot.data[index])),
                          )
                        ],
                      ),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
