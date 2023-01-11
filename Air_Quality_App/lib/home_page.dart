import 'package:extra_design_1/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? check2 = true, check3 = false;
  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Form(
            child: Container(
              margin: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: const Text(
                      "Welcome back!",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      'Use your Credential below and login to your account',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Email address',
                        hintText: 'Enter Email Address',
                        suffixIcon: Icon(Icons.check_circle_outline),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.red,
                          width: 10.0,
                        )),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      obscureText: pass,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter Email Address',
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (pass) {
                                  pass = false;
                                } else {
                                  pass = true;
                                }
                              });
                            },
                            icon: Icon(
                              pass == true
                                  ? Icons.remove_red_eye
                                  : Icons.password,
                              color: Colors.black,
                            )),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.red,
                              width: 4,
                              style: BorderStyle.solid),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Checkbox(
                            value: check2,
                            activeColor: Color.fromARGB(255, 255, 212, 183),
                            checkColor: Colors.blue,
                            onChanged: (bool? value) {
                              setState(() {
                                check2 = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          child: Text(
                            'Remember me',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Color.fromARGB(255, 74, 195, 191),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (builder) => ProfilePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Login my account',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: Center(
                        child: Text(
                      'Or Login With',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Color.fromARGB(255, 255, 169, 164),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (builder) => ProfilePage(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                child: Icon(Icons.g_mobiledata_sharp),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                            ),
                            Container(
                              child: Text(
                                'Continue with Google',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Color.fromARGB(255, 255, 212, 183),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (builder) => ProfilePage(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(child: Icon(Icons.facebook)),
                            ),
                            Container(
                              child: Text(
                                'Continue with Facebook',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "by Continuing, you accept our Terms and \n Condition,Privacy Policy",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
