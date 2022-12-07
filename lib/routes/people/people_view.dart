import 'package:flutter/material.dart';
import 'package:red_social_flutter/models/user.dart';
import 'package:red_social_flutter/routes/friends/friend_controller.dart';
import 'package:red_social_flutter/routes/people/people_controller.dart';

class PeopleView extends StatefulWidget {
  static const routeName = '/people';
  const PeopleView({super.key});

  @override
  State<PeopleView> createState() => _PeopleViewState();
}

class _PeopleViewState extends State<PeopleView> {
  List<User> listUser = [];
  final _peopleController = PeopleController();
  final _friendController = FriendController();

  @override
  void initState() {
    super.initState();
    _peopleController
        .getUsers()
        .then((value) => setState(() => listUser = value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Notificaciones",
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
            children: listUser.map((user) => UserWidget(user)).toList()),
      ),
    );
  }
}

class UserWidget extends StatelessWidget {
  final User user;
  const UserWidget(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 0, 0),
      height: 50,
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () async {
                final _friendController = FriendController();
                await _friendController.postFriends();
              },
              icon: const Icon(
                Icons.person_add,
                color: Colors.white,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 100,
              child: Text(
                user.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
