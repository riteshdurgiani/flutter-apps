import 'package:flutter/material.dart';
import 'HompePage.dart';
import 'SignInPage.dart';
import 'SignUpPage.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "/SignInPage" : (BuildContext context) => SignInPage(),
        "/SignUnPage" : (BuildContext context) => SignUpPage(), 
      },
    );
  }
}