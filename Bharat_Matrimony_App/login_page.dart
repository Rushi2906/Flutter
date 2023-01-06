import 'package:bharat_matrimony/user_list_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var EmailContorller = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isRememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Screen'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          controller: EmailContorller,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              labelText: 'UserName',
                              hintText: 'Enter UserName',
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder()),
                          onChanged: (String value) {},
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "Please Enter Email";
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          obscuringCharacter: '\*',
                          keyboardType: TextInputType.visiblePassword,
                          decoration: const InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter Password',
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder()),
                          onChanged: (String value) {},
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "Please Enter Password";
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isRememberMe = !isRememberMe;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Checkbox(
                                value: isRememberMe,
                                onChanged: (value) {},
                              ),
                            ),
                            Text(
                              'Remember Me',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: MaterialButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return UserListPage();
                                },
                              ),
                              );
                            }
                          },
                          child: Text('Login'),
                          color: Colors.teal,
                          textColor: Colors.white,
                        ),
                      )
                    ],
                  )),
            )
          ],
        ));
  }
}
