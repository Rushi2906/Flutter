

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart';
import 'package:simple_interest_calc/model/user_list_model/UserListDemo.dart';
import 'package:simple_interest_calc/rest_client.dart';
import 'package:simple_interest_calc/api_demo.dart';

class AddUserPage extends StatefulWidget {
  List<dynamic> list = [];
  String id = "";

  AddUserPage({id, list}) {
    this.id = id.toString();
    this.list = list;
  }

  @override
  State<AddUserPage> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  List<TextEditingController> _controller =
      List.generate(5, (index) => TextEditingController());
  TextEditingController nameController = TextEditingController();

  TextEditingController mobileController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.id == "") {
      for (int i = 0; i <= 4; i++) {
        _controller[i].text = "";
      }
      ;
    } else {
      for (int i = 0; i <= 4; i++) {
        _controller[i].text = widget.list[i].toString();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD NEW PAGE"),
        backgroundColor: Colors.black,
      ),
      body: bodycontaint(widget.id, _controller, context),
    );
  }
}

Widget CustomFormField({required controller, required i}) {
  List<Map<int, String>> _text = [
    {
      0: 'Faculty Name',
      1: 'Faculty Mobile (int)',
      2: 'Faculty Image',
      3: 'Faculty Email',
      4: 'id'
    }
  ];
  return TextFormField(
    controller: controller,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      hintText: _text[0][i],
      border: const OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.black),
      ),
    ),
  );
}

bodycontaint(id, _controller, context) {
  if (id != "") {
    return Column(
      children: [
        for (int i = 0; i < _controller.length; i++)
          CustomFormField(controller: _controller[i], i: i),
        TextButton(
          onPressed: () {
            UserListDemo faculty2 = UserListDemo(
                facultyName: _controller[0].text.toString(),
                facultyMobile: _controller[1].text.toString(),
                facultyImage: _controller[2].text.toString(),
                facultyEmail: _controller[3].text.toString(),
                id: _controller[4].text.toString());
            // print(faculty2.toJson());
            editFaculty(faculty: faculty2, id: id.toString())
                .then((value) => Navigator.pop(context));
          },
          child: Text(
            "Edit",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
  return Column(
    children: [
      for (int i = 0; i < _controller.length; i++)
        CustomFormField(controller: _controller[i], i: i),
      TextButton(
        onPressed: () async {
          addFaculty(
                  facultyName: _controller[0].text,
                  facultyMobile: _controller[1].text,
                  facultyImage: _controller[2].text,
                  facultyEmail: _controller[3].text,
                  id: _controller[4].text)
              .then((value) => Navigator.pop(context));
        },
        child: Text(
          "ADD",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}

Future<void> addFaculty(
    {required facultyName,
    required facultyMobile,
    required facultyImage,
    required facultyEmail,
    required id}) async {
  UserListDemo faculty = UserListDemo(
    id: id.toString(),
    facultyName: facultyName.toString(),
    facultyEmail: facultyEmail.toString(),
    facultyImage: facultyImage.toString(),
    facultyMobile: facultyMobile.toString()
  );
  final dio = Dio();
  final client = RestClient(dio);
  await client.createTask(faculty).then((value){
    getFaculty();
  });
}
