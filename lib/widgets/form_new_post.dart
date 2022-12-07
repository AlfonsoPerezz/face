import 'package:flutter/material.dart';
import 'package:red_social_flutter/models/user.dart';
import '../routes/post/post_controller.dart';

class FormNewPost extends StatefulWidget {
  static const routeName = '/posts';
  const FormNewPost({super.key});

  @override
  State<FormNewPost> createState() => _FormNewPost();
}

class _FormNewPost extends State<FormNewPost> {
  List<User> listPosts = [];
  final _postController = PostController();
  final _descripcionController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      height: 120,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () async {
                        try {
                          await _postController
                              .postPosteos(_descripcionController.text);
                          print(_postController
                              .postPosteos(_descripcionController.text));
                        } catch (e) {
                          // how to send a toast flutter
                          print(e.toString());
                        }
                      },
                      icon: const Icon(
                        Icons.post_add_rounded,
                        color: Color.fromARGB(255, 0, 66, 120),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(),
                width: 250,
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "¿Qué estás pensando?",
                      border: InputBorder.none),
                ),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      // color: Colors.black,
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.33,

                      child: Container(
                        width: 100,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              child: Icon(Icons.live_tv, color: Colors.red),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              child: Text("Live"),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      // color: Colors.black,
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.33,

                      child: Container(
                        width: 100,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              child: Icon(Icons.photo, color: Colors.green),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 38,
                              child: Text("Photo"),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      // color: Colors.black,
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.33,

                      child: Container(
                        width: 100,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              child: Icon(Icons.camera_roll,
                                  color: Colors.purpleAccent),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 35,
                              child: Text("room"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
