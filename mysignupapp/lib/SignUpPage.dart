import 'package:flutter/material.dart';
import 'package:mysignupapp/HomePage.dart';
import 'HomePage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _autovalidate = false;
  String name,email,mobile,collegename,password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Sign Up"),

      ),
      body: SingleChildScrollView(
          child: Form(
          key: _key,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Image(
                  image: AssetImage("images/mascot.png"),
                  width: 100.0,
                  height: 100.0,
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    initialValue: name,
                    validator: (input){
                      if(input.isEmpty){
                        return 'Enter Name ';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Name',
                    ),
                    onSaved: (input) => name = input ,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: TextFormField(
                    
                    validator: (input){
                      if(input.isEmpty){
                        return 'Enter Email ';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                    onSaved: (input) => email = input ,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: TextFormField(
                    validator: (input){
                      
                      if(input.isEmpty){
                        return 'Enter Password ';
                      }
                      if(input.length<5){
                        return 'Password should be atleast 5 charaters ';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    onSaved: (input) => password = input ,
                    obscureText: true,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: TextFormField(
                    validator: (input){
                      if(input.isEmpty){
                        return 'Enter Mobile';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Mobile',
                    ),
                    onSaved: (input) => mobile = input ,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: TextFormField(
                    validator: (input){
                      if(input.isEmpty){
                        return 'Enter College Name ';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'College Name',
                    ),
                    onSaved: (input) => collegename = input ,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                ButtonTheme(
                  height: 40.0 ,
                  minWidth: 200.0,
                  child: RaisedButton(
                    onPressed: _sendToNextScreen,
                    color: Colors.redAccent,
                    child: Text(
                      'Save',
                      style : TextStyle(
                        color: Colors.white,
                      ),

                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),

                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                )
              ],
            ),
          ),
        ),
      ),
    );

  }

  _sendToNextScreen(){
    name ="sdfdfd";
    build(context);
    if (1==1)
    return;


    if(_key.currentState.validate()){
      _key.currentState.save();
      Navigator.push(context, 
        MaterialPageRoute(builder: (context) => HomePage(
          name: name,
          mobile: mobile,
          email:email,
          password : password,
          collegename: collegename,

        ))
      );
    }
    else{
      setState(() {
       _autovalidate = true; 
      });
    }
  }
}