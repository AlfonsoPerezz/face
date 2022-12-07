import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:red_social_flutter/models/session.dart';
import 'package:red_social_flutter/models/user.dart';
import 'package:red_social_flutter/utils/globalConfig.dart';

class FriendController {
  Future<List<User>> postFriends() async {
    final url = Uri.http(GlobalConfig.API_URL, '/friends/{userId}');
    final response = await http
        .post(url, headers: {'Authorization': 'Bearer ${Session().token}'});
    print(response.body);
    final jsonFriends = jsonDecode(response.body) as List<dynamic>;
    return jsonFriends.map((e) => User.fromJason(e)).toList();
  }
}

class FriendRequestController {
  static Future<List<User>> getFriendsR() async {
    final url = Uri.http(GlobalConfig.API_URL, '/friends/requests');
    final response = await http
        .get(url, headers: {'Authorization': 'Bearer ${Session().token}'});
    print(response.body);
    final jsonRequestsFriends = jsonDecode(response.body) as List<dynamic>;
    return jsonRequestsFriends.map((e) => User.fromJason(e)).toList();
  }
}
