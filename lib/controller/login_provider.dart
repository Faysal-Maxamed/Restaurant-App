import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:resturent_app/constant/constant.dart';
import 'package:resturent_app/models/login_model.dart';
import 'package:resturent_app/pages/foods_page.dart';
import 'package:resturent_app/pages/home.dart';

class LoginProvider extends ChangeNotifier {
  String? _email;
  String? _password;
  LoginModel? user;
  bool isloading = false;
  final box = GetStorage();

  String get email => _email!;
  String get password => _password!;

  getemail(String email) {
    _email = email;
    notifyListeners();
  }

  getpassword(String password) {
    _password = password;
    notifyListeners();
  }

  login(BuildContext context) async {
    box.write(isloggedIn, "isloggedIn");
    isloading = true;
    notifyListeners();
    try {
      var date = <String, dynamic>{"email": email, "password": password};

      var response = await http.post(
        Uri.parse(endpoint + "users/login"),
        body: jsonEncode(date),
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode == 200) {
        var decodedate = jsonDecode(response.body);
        user = LoginModel.fromJson(decodedate);
        if (user!.isAdmin == true) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => FoodsPageScreen(),
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor: Colors.green,
                content: Text('succsefully login')),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => HomeScreen(),
            ),
          );
        }
      }
    } catch (e) {
      print(e);
    }
    isloading = false;
    notifyListeners();
  }
}
