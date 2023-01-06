
import 'package:bharat_matrimony/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 10,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/bg_matrimony_prelogin.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 30),
                              width: 250,
                              child: Image.asset('assets/images/bharatmatrimony-logo.png'),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: const Text(
                                "INDIA'S\nMOST TRUSTED\nMATRIMONY BRAND",
                                style: TextStyle(fontSize: 30),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                      ],
                    )
                  ],
                )),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 142, 196, 74),
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 48, 48, 48),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}