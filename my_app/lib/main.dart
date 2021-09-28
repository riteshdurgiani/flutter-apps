import 'package:flutter/material.dart';
import 'package:my_app/Login.dart';
import 'HomePage.dart';
import 'Celebrations.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Default App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.orange,
        primaryColor: Colors.deepPurpleAccent,
        primarySwatch: Colors.purple
        ),
      home:Login(),
      routes: <String , WidgetBuilder>{
        "/celebrations": (BuildContext context)=> Celebrations()
      },
    );
  }
}