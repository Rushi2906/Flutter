import 'package:flutter/material.dart';

class SimpleInterestCalc extends StatefulWidget {
  const SimpleInterestCalc({super.key});

  @override
  State<SimpleInterestCalc> createState() => _SimpleInterestCalcState();
}

class _SimpleInterestCalcState extends State<SimpleInterestCalc> {
  var form_key = GlobalKey<FormState>();
  TextEditingController principal_c = TextEditingController();
  TextEditingController rate_c = TextEditingController();
  TextEditingController time_c = TextEditingController();
  String result = "";
  String final_result = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Simple Interest Calculator'),
        ),
        body: Card(
          margin: const EdgeInsets.all(40),
          borderOnForeground: true,
          elevation: 30,
          child: Center(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "S.I.Calculator",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                  ),
                  Form(
                      key: form_key,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(20),
                                    child: TextFormField(
                                      controller: principal_c,
                                      validator: (value) {
                                        if (value != null && value!.isEmpty) {
                                          return "Please Enter Principal Amount";
                                        }
                                      },
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                          labelText: 'Principal Amount',
                                          hintText: "Enter Principla Amount",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(20),
                                    child: TextFormField(
                                      controller: rate_c,
                                      validator: (value) {
                                        if (value != null && value!.isEmpty) {
                                          return "Please Enter Rate of Interest";
                                        }
                                      },
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                          labelText: 'Annual interest rate',
                                          hintText:
                                          "Enter Annual Interest Rate",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(20),
                                    child: TextFormField(
                                      controller: time_c,
                                      validator: (value) {
                                        if (value != null && value!.isEmpty) {
                                          return "Please Enter Time";
                                        }
                                      },
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                          labelText: 'Time',
                                          hintText: "Enter time(in years)",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          color: Colors.teal,
                                          child: TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (form_key.currentState!
                                                      .validate()) {
                                                    result = calculateData();
                                                  }
                                                });
                                              },
                                              child: const Text(
                                                'Calculate',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          color: Colors.teal,
                                          child: TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  principal_c.text = "";
                                                  rate_c.text = "";
                                                  time_c.text = "";
                                                  result = "";
                                                });
                                              },
                                              child: const Text(
                                                'Reset',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      result,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String calculateData() {
    double Principal = double.parse(principal_c.text);
    double Rate = double.parse(rate_c.text);
    double Time = double.parse(time_c.text);

    double FinalAmount = (Principal * Rate * Time) / 100;
    String result = "Simple Interest is $FinalAmount";

    return result;
  }
}