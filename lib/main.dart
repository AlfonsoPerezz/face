import 'package:flutter/material.dart';
import 'package:red_social_flutter/routes/login/login.dart';
import 'package:red_social_flutter/routes/people/people_view.dart';
import 'package:red_social_flutter/routes/register/register.dart';
import 'package:red_social_flutter/routes/feed/feedPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Facebook',
        color: Colors.black,
        debugShowCheckedModeBanner:
            false, //quitar etiqueta esquina superior derecha
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: LoginPage.routeName,
        routes: {
          LoginPage.routeName: (context) => LoginPage(),
          RegisterPage.routeName: (context) => RegisterPage(),
          FeedPage.routeName: (context) => FeedPage(),
          PeopleView.routeName: (context)=> const PeopleView(),
        });
  }
}
