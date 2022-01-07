import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:todolist/models/UserModel.dart';

class UserController with ChangeNotifier {
  List<UserModel> _users = [];

  Future<bool> getUsers() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    try{
      http.Response response = await http.get(url);
      var data = json.decode(response.body) as List;
      List<UserModel> temp = [];

      data.forEach((element) {
        UserModel userModel = UserModel.fromJson(element);
        temp.add(userModel);
      });
      temp = _users;
      notifyListeners();
      return true;
    } catch (e){
      print (e);
      return false;
    }
    }

    List<UserModel> get users {
      return [..._users];
    }
  }
