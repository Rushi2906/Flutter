import 'package:flutter/material.dart';

class UserListPage extends StatefulWidget {
  UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  List<Map> users = [];

  void initUser() {
    Map<String, dynamic> map = {};
    map['NAME'] = 'Rushi';
    map['CITY'] = 'Rajkot';
    users.add(map);

    map = {};
    map['NAME'] = 'Rushi';
    map['CITY'] = 'Rajkot';
    users.add(map);

    map = {};
    map['NAME'] = 'Rushi';
    map['CITY'] = 'Rajkot';
    users.add(map);
  }

  @override
  void initState() {
    super.initState();
    initUser();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Row(children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWVEiy5ebSXXLmmjzHl5Dcx6Rw1Eg6sxlG5XzbYiXfHxrHrEa5jGA4h-MNgRSqwLuhHf0&usqp=CAU',
                    height: 20,
                  ),
                )),
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      users[index]['NAME'],
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ]),
            );
          },
          itemCount: users.length,
        ),
      ),
    );
  }
}
