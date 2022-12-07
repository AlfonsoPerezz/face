import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:red_social_flutter/models/session.dart';
import 'package:red_social_flutter/models/user.dart';
import 'package:red_social_flutter/utils/globalConfig.dart';

class PeopleController {
  Future<List<User>> getUsers() async {
    final url = Uri.http(GlobalConfig.API_URL, '/users');
    final response =
        await http.get(url, headers: {'Authorization': 'Bearer ${Session().token}'});
    print(response.body);
    final jsonUsers = jsonDecode(response.body) as List<dynamic>;
    return jsonUsers.map((e) => User.fromJason(e)).toList();
  }
}
