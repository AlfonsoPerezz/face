import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:red_social_flutter/models/user.dart';
import 'package:red_social_flutter/utils/globalConfig.dart';
import 'package:red_social_flutter/models/session.dart';

class PostController {
  Future<List<User>> postPosteos(String descripcion) async {
    final url = Uri.http(GlobalConfig.API_URL, '/posts');
    final response =
        await http.post(url, headers: {'Authorization': 'Bearer ${Session().token}'}, body: descripcion);
    print(response.body);
    final jsonPosts = jsonDecode(response.body) as List<dynamic>;
    return jsonPosts.map((e) => User.fromJason(e)).toList();
  }
}
