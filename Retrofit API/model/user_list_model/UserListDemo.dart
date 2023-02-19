import 'dart:convert';
/// FacultyName : "Dr. Gopi Sanghani"
/// FacultyImage : "https://darshan.ac.in/U01/Faculty-Photo/5---21-06-2021-10-50-15.jpg"
/// FacultyMobile : "9825621471"
/// FacultyEmail : " gopi.sanghani@​darshan.ac.in"
/// id : "4"

// UserListDemo userListDemoFromJson(String str) => UserListDemo.fromJson(json.decode(str));
// String userListDemoToJson(UserListDemo data) => json.encode(data.toJson());
class UserListDemo {
  UserListDemo({
      String? facultyName, 
      String? facultyImage, 
      String? facultyMobile, 
      String? facultyEmail, 
      String? id,}){
    _facultyName = facultyName;
    _facultyImage = facultyImage;
    _facultyMobile = facultyMobile;
    _facultyEmail = facultyEmail;
    _id = id;
}

  UserListDemo.fromJson(dynamic json) {
    _facultyName = json['FacultyName'];
    _facultyImage = json['FacultyImage'];
    _facultyMobile = json['FacultyMobile'];
    _facultyEmail = json['FacultyEmail'];
    _id = json['id'];
  }
  String? _facultyName;
  String? _facultyImage;
  String? _facultyMobile;
  String? _facultyEmail;
  String? _id;
UserListDemo copyWith({  String? facultyName,
  String? facultyImage,
  String? facultyMobile,
  String? facultyEmail,
  String? id,
}) => UserListDemo(  facultyName: facultyName ?? _facultyName,
  facultyImage: facultyImage ?? _facultyImage,
  facultyMobile: facultyMobile ?? _facultyMobile,
  facultyEmail: facultyEmail ?? _facultyEmail,
  id: id ?? _id,
);
  String? get facultyName => _facultyName;
  String? get facultyImage => _facultyImage;
  String? get facultyMobile => _facultyMobile;
  String? get facultyEmail => _facultyEmail;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['FacultyName'] = _facultyName;
    map['FacultyImage'] = _facultyImage;
    map['FacultyMobile'] = _facultyMobile;
    map['FacultyEmail'] = _facultyEmail;
    map['id'] = _id;
    return map;
  }

}