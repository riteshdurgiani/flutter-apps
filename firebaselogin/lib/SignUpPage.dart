import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  String _name, _email, _password;

  checkAuthentication() async{
    _auth.onAuthStateChanged.listen((user){
      if(user != null){
        Navigator.pushReplacementNamed(context, "/");
      }
      
    });

  }
  navigateToSignInScreen(){
    Navigator.pushReplacementNamed(context, "/SignInPage");
  }

    showError(String errorMessage){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Error '),
          content: Text(errorMessage),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            )
          ],
        );
      }
    );
  }

  signUp() async{
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      try{
        FirebaseUser user = await _auth.createUserWithEmailAndPassword(email: _email , password: _password);
        if(user!=null){
          UserUpdateInfo updateUser = UserUpdateInfo();
          updateUser.displayName = _name;
          user.updateProfile(updateUser);
        }
      }catch(e){
        showError(e.message);
      }
    }
  }

  @override
  void initState(){
    super.initState();
    this.checkAuthentication();


  }


  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 50.0),
                child: Image(image: AssetImage("assets/mascot.png",),
                width: 100.0,
                height: 100.0,
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top:20.0),
                        child: TextFormField(
                          validator:(input){
                            if(input.isEmpty){
                              return 'Enter name';
                            }
                          },
                          decoration: InputDecoration(labelText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )
                          ),
                          onSaved: (input) => _name = input,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top:20.0),
                        child: TextFormField(
                          validator:(input){
                            if(input.isEmpty){
                              return 'Enter Email';
                            }
                          },
                          decoration: InputDecoration(labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )
                          ),
                          onSaved: (input) => _email = input,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top:20.0),
                        child: TextFormField(
                          validator:(input){
                            if(input.length < 6){
                              return 'Enter password with atleast 6 characters';
                            }
                          },
                          decoration: InputDecoration(labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )
                          ),
                          onSaved: (input) => _password = input,
                          obscureText: true,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: RaisedButton(
                          padding: EdgeInsets.fromLTRB(100.0, 20.0, 100.0, 20.0),
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          onPressed: signUp,
                          child: Text('Sign In',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 20.0,
                          ) ,
                          ),
                        ),
                      ),
                      GestureDetector(
                        
                        onTap: navigateToSignInScreen,
                        child: Text("Create and account?",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16.0),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
