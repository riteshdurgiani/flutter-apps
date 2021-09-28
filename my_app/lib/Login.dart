import 'package:flutter/material.dart';
import 'DrawerPage.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _autovalidate = false;
  String loginId,password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title:Center(
          child:Text('Login')
        )
        
        
      ),
      body:SingleChildScrollView(
          child: Form(
          key: _key,
          child:Card(
            
            margin: EdgeInsets.only(top:40.0,bottom:24.0,left:10.0,right:10.0),
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.only(
                topLeft: Radius.circular(70.0),
                topRight: Radius.circular(70.0),
                bottomLeft: Radius.circular(70.0),
                bottomRight: Radius.circular(70.0),
                

              ),
          
            ),
            elevation: 10.0,
            shadowColor: Colors.black,
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
                
                
                Padding(padding: EdgeInsets.only(top:20.0),),
                Card(
                  margin: EdgeInsets.only(top:0),
                    elevation: 1.25,
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.only(
                        topLeft:Radius.circular(30.0),
                        bottomRight:Radius.circular(30.0)
                      )
                    ),
                    child: Image(
                    image: AssetImage("images/netersonlogo.png"),
                    width:100.0,
                    height: 100.0,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Card(
                  margin: EdgeInsets.only(left:10.0,right:10.0),
                  borderOnForeground: true,
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(40.0),
                    ),
                    elevation: 3.0,
                    shadowColor: Colors.grey[300],
                    child: ListTile(
                  
                    leading:Icon(Icons.person),
                    
                    contentPadding: EdgeInsets.only(bottom:5.0,left:10.0,right:20.0),
                    title: TextFormField(
                      
                      validator: (input){
                        if(input.isEmpty){
                          return "Enter name";
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Login Id' ,   
                        hintStyle: TextStyle(color: Colors.blueGrey[300])
                    
                      ),
                      onSaved: (input)=>loginId=input,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Card(
                 margin: EdgeInsets.only(left:10.0,right:10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(40.0),
                    ),
                    elevation: 3.0,
                    
                    shadowColor: Colors.grey[300],
                   child: ListTile(
                     contentPadding: EdgeInsets.only(bottom:5.0,left:10.0,right:20.0),
                    leading:Icon(Icons.vpn_key),

                    title: TextFormField(
                      
                      validator: (input){
                        if(input.isEmpty){
                          return "Enter password";
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password' ,   
                        hintStyle: TextStyle(color: Colors.blueGrey[300])
                      ),
                      onSaved: (input)=>password=input,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Card(
                   margin: EdgeInsets.only(left:10.0,right:10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(20.0),
                    ),
                    elevation: 3.0,
                    shadowColor: Colors.grey[200],
                    
                     child: CheckboxListTile(
                    
                    title: Text('Remember Me'),
                    secondary: Icon(Icons.memory),
                    value:false,
                    onChanged: (value){
                      setState(() {
                        
                      });
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(15.0),),
                ButtonTheme(
                  height: 40.0,
                  minWidth: 300.0,
                  child: RaisedButton(
                    padding: EdgeInsets.all(10.0),
                    onPressed: _sendToNextScreen,
                    child:Text('Login',style:TextStyle(color: Colors.white)),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(10.0)
                    ),

                  ),
                ),
                // Padding(padding: EdgeInsets.all(10.0),),
                Center(
                   
                  child: ListTile(
                    
                    leading:Icon(Icons.help),
                    title:Text("Need Help")
                  ),
                ),
                 Padding(padding: EdgeInsets.all(5.0),),
                
              ]
            ),
          )
        ),
      ),
    );
  }
  _sendToNextScreen(){
    if(_key.currentState.validate()){
      _key.currentState.save();
      //sendtonextscreen
      Navigator.push(context,
        MaterialPageRoute(
          builder:(context)=> DrawerPage(
            // loginId:loginId,
            // password:password
          )

        )
      );
    }
    else{
      setState(() {
        _autovalidate = true;
      });
    }
  }
}