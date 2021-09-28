import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 30.0),),
            Row(
            
              children: <Widget>[
                
                Padding(padding: EdgeInsets.all(20.0),),
                Text("First Name",style: TextStyle(fontSize: 30.0,),),
                Padding(padding: EdgeInsets.all(20.0),),
                Text("Ritesh",style: TextStyle(fontSize: 30.0),),
              ],
            ),
          ],
      ),
    ),
    );
  }
}