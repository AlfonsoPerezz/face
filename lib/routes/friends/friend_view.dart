import 'package:flutter/material.dart';
import 'package:red_social_flutter/models/user.dart';
import 'package:red_social_flutter/routes/friends/friend_controller.dart';

class FriendView extends StatefulWidget {
  static const routeName = '/friend';
  const FriendView({super.key});

  @override
  State<FriendView> createState() => _FriendViewState();
}

class _FriendViewState extends State<FriendView> {
  List<User> listFriends = [];
  final _friendController = FriendController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          "Solicitudes",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
        ),
      ),
    );
  }
}
