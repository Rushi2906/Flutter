import 'package:simple_interest_calc/model/user_list_model/UserListDemo.dart';

class UserListModel{
  List<UserListDemo>? _resultList;
  UserListModel({
    List<UserListDemo>? resultList,
  }){
    _resultList = resultList;
  }

  List<UserListDemo>? get resultList => _resultList;

  UserListModel.fromJson(dynamic json){
    if(json != null){
      _resultList = [];
      json.forEach((v){
        _resultList?.add(UserListDemo.fromJson(v));
      });
    }
  }
}