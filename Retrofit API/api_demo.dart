import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:simple_interest_calc/add_user_page.dart';
import 'package:simple_interest_calc/model/user_list_model/UserListDemo.dart';
import 'package:simple_interest_calc/model/user_list_model/user_model.dart';
import 'package:simple_interest_calc/rest_client.dart';

class ApiDemo extends StatefulWidget {
  const ApiDemo({super.key});

  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  late List<dynamic> listofdata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AddUserPage(list: [],id: "",)),
              ).then((value){
                setState(() {
                  getFaculty();
                });
              });

            },
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: FutureBuilder<UserListModel>(
        builder: (context, snapshot) {
          if (snapshot.data != null && snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 40,
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(snapshot.data!.resultList![index].facultyName!
                            .toString()),
                        InkWell(
                            onTap: () async {
                              final dio = Dio();
                              final client = RestClient(dio);
                              UserListDemo data = await client.getById(snapshot
                                  .data!.resultList![index].id
                                  .toString());
                              listofdata = [
                                data.facultyName,
                                data.facultyEmail,
                                data.facultyImage,
                                data.facultyMobile,
                                data.id
                              ];
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AddUserPage(
                                    list: listofdata,
                                    id: snapshot.data!.resultList![index].id!
                                        .toString()),
                              )).then((value){
                                setState(() {
                                  getFaculty();
                                });
                              });
                            },
                            child: Icon(Icons.edit))
                      ],
                    ),
                  ),
                );
              },
              itemCount: snapshot.data!.resultList!.length,
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        future: getFaculty(),
      ),
    );
  }

// Future<Map<String,dynamic>> callEntriesApi async {
//   http.Response response =
//       await http.get(Uri.parse("https://6312e462b466aa9b038f4bc1.mockapi.io/faculties"));
//   Map<String,dynamic> map = jsonDecoode(response.body.toString());
// }

}

Future<UserListModel> getFaculty() async {
  final dio = Dio(); // Provide a dio instance
  final client = RestClient(dio);
  UserListModel data =
      UserListModel.fromJson(jsonDecode(await client.getTask()));
  return data;
}

Future<void> editFaculty(
    {required UserListDemo faculty, required id}) async {
  print(faculty.facultyName);
  final dio = Dio();
  final client = RestClient(dio);
  await client.updateTask(id.toString(), faculty).then(
        (value) {},
      );
}
