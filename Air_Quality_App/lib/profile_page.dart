import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Card(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 50,
                          child: Image.asset('assets/images/face.jpeg'),
                        ),
                      ),
                    ),
                    Expanded(flex: 5, child: Container()),
                    Expanded(
                        child: Container(
                      child: Icon(Icons.notifications_outlined),
                    )),
                    Expanded(
                        child: Container(
                      child: Icon(Icons.settings_rounded),
                    ))
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Text(
                                      'Hello Mike',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                  margin: EdgeInsets.only(left: 15, top: 5),
                                  child: Text(
                                    '23 November 2022',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(flex: 3, child: Container()),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.only(right: 20),
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Color.fromARGB(255, 255, 212, 183),
                            ),
                            child: TextButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(right: 5),
                                        child: Icon(
                                          Icons.add,
                                          size: 20,
                                          color: Colors.black,
                                        )),
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          'Add',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 230,
                width: 350,
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Container(
                            child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 30),
                            height: 70,
                            decoration: BoxDecoration(border: Border.all()),
                            child: Image.asset(
                              'assets/images/speed_image1.jpg',
                              height: 200,
                              fit: BoxFit.fill,
                            )),
                        Container(
                          child: Column(
                            children: [
                              Expanded(
                                  child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 20, top: 20),
                                      child: Text(
                                        'Jakarta',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 20, left: 40),
                                      child: Text(
                                        '30 AQI US',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30,top: 10),
                                width: 220,
                                child: Text("Today\'s air quality is good"),
                              ))
                            ],
                          ),
                        )
                      ],
                    ))),
                    Expanded(
                        child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.thermostat,size: 28,),
                                SizedBox(height: 10,),
                                Text('24°C')
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.water_drop,size: 28,),
                                SizedBox(height: 10,),
                                Text('57%')
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.wb_sunny_sharp,size: 28,),
                                SizedBox(height: 10,),
                                Text('Light')
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.wind_power_rounded,size: 28,),
                                SizedBox(height: 10,),
                                Text('13 Km/h')
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 230,
                width: 350,
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Container(
                            child: Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 30),
                                    height: 70,
                                    decoration: BoxDecoration(border: Border.all()),
                                    child: Image.asset(
                                      'assets/images/speed_image2.jpg',
                                      height: 200,
                                      fit: BoxFit.fill,
                                    )),
                                Container(
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  margin:
                                                  EdgeInsets.only(left: 20, top: 20),
                                                  child: Text(
                                                    'Yogyakarta',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                ),

                                                Container(
                                                  margin:
                                                  EdgeInsets.only(top: 20, left: 50),
                                                  child: Text(
                                                    '50 AQI US',
                                                    style: TextStyle(
                                                        fontSize: 15, color: Colors.black),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                      Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(top: 10,left: 20),
                                            padding: EdgeInsets.only(left: 5),
                                            width: 228,
                                            child: Text("Today\'s air quality is good"),
                                          ))
                                    ],
                                  ),
                                )
                              ],
                            ))),
                    Expanded(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.thermostat,size: 28,),
                                    SizedBox(height: 10,),
                                    Text('32°C')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.water_drop,size: 28,),
                                    SizedBox(height: 10,),
                                    Text('45%')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.wb_sunny_sharp,size: 28,),
                                    SizedBox(height: 10,),
                                    Text('Light')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.wind_power_rounded,size: 28,),
                                    SizedBox(height: 10,),
                                    Text('08 Km/h')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                width: 350,
                height: 80,
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Color.fromARGB(255, 74, 195, 191),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        color: Color.fromARGB(255, 255, 212, 183),
                        // rgba(255,212,183,255)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, right: 10, left: 10, bottom: 5),
                        child: Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.ac_unit,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.access_alarm,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.account_box,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}


