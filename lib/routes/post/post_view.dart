import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:red_social_flutter/models/session.dart';
import 'package:red_social_flutter/models/user.dart';
import 'package:red_social_flutter/routes/post/post_controller.dart';
import 'package:red_social_flutter/widgets/form_new_post.dart';

class PostView extends StatefulWidget {
  static const routeName = '/posts';
  const PostView({super.key});

  @override
  State<PostView> createState() => _PostView();
}

class _PostView extends State<PostView> {
  List<User> listPosts = [];
  final _postController = PostController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: CircleAvatar(),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      Session().user.name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(Icons.more_horiz),
              )
            ],
          ),
          ConstrainedBox(
            constraints: new BoxConstraints(
              minHeight: 150,
              minWidth: 150,
              maxHeight: 350.0,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            child: Container(
                margin: EdgeInsets.only(top: 10),
                child: ListView(
                )),
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
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.33,

                      child: Container(
                        width: 100,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              child: Icon(Icons.favorite_border,
                                  color: Colors.red),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 35,
                              child: Text("Like"),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.33,

                      child: Container(
                        width: 100,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              child:
                                  Icon(Icons.add_comment, color: Colors.green),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 70,
                              child: Text("Comments"),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.33,

                      child: Container(
                        width: 100,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              child: Icon(Icons.share, color: Colors.black),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 65,
                              child: Text("Compartir"),
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
