import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser user;
  bool isSignedIn = false;


  checkAuthentication() async{
    _auth.onAuthStateChanged.listen((user){
      if(user == null){
        Navigator.pushReplacementNamed(context, "/SignInPage");

      }
    });

  }
  getUser() async {
    FirebaseUser firebaseuser = await _auth.currentUser();
    await firebaseuser?.reload();
    firebaseuser = await _auth.currentUser();

    if(firebaseuser != null){
      setState(() {
       this.user = firebaseuser;
       this.isSignedIn = true; 
      });
  }
 
  
  } 
  signOut() async{
    _auth.signOut();
  }
  @override
  void initState(){
    super.initState();
    this.checkAuthentication();
    this.getUser();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Home')),
      body: Container(
        child: Center(
          child: !isSignedIn
          ?CircularProgressIndicator()
          : Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(50.0),
                child: Image(
                  image: AssetImage("assests/mascot.png"),
                  width: 100.0,
                  height: 100,
                ),
              ),
              Container(
                padding: EdgeInsets.all(50.0),
                child: Text("Hello, ${user.displayName}, you are logged in as ${user.email}",
                style: TextStyle(fontSize: 20.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: RaisedButton(
                  color: Colors.blue,
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  onPressed: signOut,
                  child: Text('Signout',style: TextStyle(color: Colors.white,fontSize: 20.0),)
                    ,
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}