import 'package:flutter/material.dart';

class Example1 extends StatefulWidget {
  const Example1({super.key});

  @override
  State<Example1> createState() => _Example1State();
}

class _Example1State extends State<Example1> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar View"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home_filled),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.account_box_outlined),
                text: "Account",
              ),
              Tab(
                icon: Icon(Icons.alarm),
                text: "Alarm",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.home),
            ),
            Center(
              child: Icon(Icons.account_box),
            ),
            Center(
              child: Icon(Icons.alarm),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: Text(
                  "Drawer Header",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(
                    Icons.home
                ),
                title: const Text("Page 1"),
                tileColor: Colors.cyanAccent,
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(
                    Icons.access_time_filled
                ),
                title: const Text("Page 2"),
                tileColor: Colors.cyanAccent,
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

