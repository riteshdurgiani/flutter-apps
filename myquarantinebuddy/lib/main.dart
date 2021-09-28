import 'package:flutter/material.dart';
import 'package:myquarantinebuddy/JournalList.dart';
import 'package:myquarantinebuddy/MainScreen.dart';
import 'HomePage.dart';
import 'JournalList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      title: 'QuarantineBuddy',
      debugShowCheckedModeBanner: false,
      home: JournalList(),
      
    );
  }
}