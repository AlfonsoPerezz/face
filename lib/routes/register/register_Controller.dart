import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:red_social_flutter/models/user.dart';
import 'package:red_social_flutter/utils/globalConfig.dart';

class RegisterController {
  Future<User> register(String name, String email, String password) async {
    var url = Uri.http(GlobalConfig.API_URL, 'auth/register');
    var response = await http.post(url,
        headers: {"Content-Type": 'application/json'},
        body: jsonEncode({"name": name, "email": email, "password": password}));
    print(response.body);
    if (response.statusCode != 200) throw 'Error en usuario o contraseña';
    var jsonResponse = jsonDecode(response.body);
    var user = User(
        jsonResponse["id"] as String,
        jsonResponse["name"] as String,
        jsonResponse["email"] as String);
        
    return user;
  }
}
