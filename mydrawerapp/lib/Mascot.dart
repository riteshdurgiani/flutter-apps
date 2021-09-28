import 'package:flutter/material.dart';

class Mascot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mascot Page"),
      ),
     
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("images/mascot.png"),



            ),
            Text("RiteshDurgiani.in",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0
            ),
            )
          ],
        ),
      ),
    );
  }
}