import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Wcards extends StatelessWidget {

  final String name, imageurl, time;
  Wcards(this.name , this.imageurl, this.time);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25,
        foregroundColor: Colors.deepOrange,
        backgroundImage: NetworkImage(imageurl),
      ),
      title: Text(
        name,
        style:TextStyle(fontWeight : FontWeight.bold)
      ),
    );
  }
}
