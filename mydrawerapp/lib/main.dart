import 'package:flutter/material.dart';
import 'package:mydrawerapp/Profile.dart';
import 'MyHomePage.dart';
import 'Category.dart';
import 'Mascot.dart';
import 'Profile.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Drawer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        "/a": (BuildContext context) => Category(),
        "/p": (BuildContext context) => Profile(),
        "/m": (BuildContext context) => Mascot(),
      },
    );
  }
}

