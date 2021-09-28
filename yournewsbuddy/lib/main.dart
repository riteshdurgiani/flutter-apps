import 'package:flutter/material.dart';
import 'NewsHome.dart';

void main()=>(runApp(MyApp()));


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      title: 'Your New Buddy',
      home: NewsHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}