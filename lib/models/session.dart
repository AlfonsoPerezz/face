import 'package:red_social_flutter/models/user.dart';

class Session {
  final String token;
  final User user;
  static Session? _session; 

  Session._(this.token, this.user);

  factory Session.create(String token, User user) {
    return _session ??= Session._(token, user); 
  }

  factory Session() {
    if (_session == null) throw 'session null found';
    return _session!; 
  }

  @override
  String toString() {
    return "Session(token: $token, user: ${user.toString()})";
  }
}
