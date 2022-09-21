import 'dart:convert';
import 'user.dart';
import 'package:http/http.dart' as http;


const USER_API = "https://randomuser.me/api/?results=50";

void main()async{
  await http.get(Uri.parse(USER_API)).then((response) {
   List<dynamic> decodedData = jsonDecode(response.body)["results"] as List;
   List<User> users = decodedData.map((e) => User.from(e)).toList();
   users.forEach((user) => print(user.dob.age));
  }).catchError((e)=>print(e));
}
