import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Hello')
      ),
      body:Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: <Widget>[

              Padding(padding: EdgeInsets.all(8.0)),
              Center(
                child: Text(
                    'Quarantine',
                    
                    style: TextStyle(
                      fontSize: 40.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                    ),
                  ),
              ),
                Padding(padding: EdgeInsets.all(8.0)),
                Padding(padding: EdgeInsets.all(8.0)),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                  Text("ImageOne"),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text("ImageTWO"),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text("ImageThree")
                  

                ],),
              ),
                Padding(padding: EdgeInsets.all(8.0)),
              Center(
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                  Text("ImageOne"),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text("ImageTWO"),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text("ImageThree")
                  

                ],),
              ),
              Padding(padding: EdgeInsets.all(8.0)),
               Padding(padding: EdgeInsets.all(8.0)),
              Center(
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                  Text("ImageOne",style:TextStyle(fontWeight: FontWeight.bold)),
                  Padding(padding: EdgeInsets.all(2.0)),
                  Text("ImageTWO",style: TextStyle(color:Colors.grey),),
                  
                  

                ],),
              ),
               Padding(padding: EdgeInsets.all(8.0)),
              Center(
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                  Text("ImageOne",style:TextStyle(fontWeight: FontWeight.bold)),
                  Padding(padding: EdgeInsets.all(2.0)),
                  Text("ImageTWO",style: TextStyle(color:Colors.grey),),
                  
                  

                ],),
              ),
               Padding(padding: EdgeInsets.all(16.0)),
              Card(
                color: Colors.pink[200].withOpacity(1),
                
                elevation:1.0,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                  Padding(padding: EdgeInsets.all(8.0)),
                  Expanded(
                    flex: 2,
                        child: Column(
                      
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Text One Goes Here",style:TextStyle(fontSize:20.0,fontWeight:FontWeight.bold)),
                           Padding(padding: EdgeInsets.all(4.0)),
                          
                          Text("Text Two Here !",style:TextStyle(fontSize: 15.0)),
                           Padding(padding: EdgeInsets.all(4.0)),

                          Text("Text #3 : here",style: TextStyle(color:Colors.grey),),
                           Padding(padding: EdgeInsets.all(4.0)),

                        ],),
                    ),
                    
                    Icon(Icons.card_giftcard,size: 20.0,)
                  ],
                )
              ),
             Padding(padding: EdgeInsets.all(8.0)),
              Card(
                elevation: 2.0,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Center(
                    child:Text("Login Or Register",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Container(
                    width: 400,
                    child:RaisedButton(
                      onPressed : (){},
                      child:Text("Enter Phone Number Or Email ID",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                      padding: EdgeInsets.all(10.0),
                      color: Colors.pink,
                    )
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Row(children: <Widget>[
                    Expanded(child:Divider(thickness: 3.0,color: Colors.black,),flex: 2,),
                    Padding(padding: EdgeInsets.all(3.0),),
                    Text("OR",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    Padding(padding: EdgeInsets.all(3.0),),
                    Expanded(child:Divider(thickness: 3.0,color: Colors.black,),flex: 2,),
                  ],),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Center(
                    child:Text("Continue with Social Login ",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: <Widget>[
                    
                    Container(
                    
                      width:180,
                      child:RaisedButton(
                        onPressed: (){},
                        child:Row(children: <Widget>[
                          Icon(Icons.ac_unit),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Text("Facebook",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                        ],)
                      )
                    ),
                    Container(
                    
                      width:180,
                      child:RaisedButton(
                        onPressed: (){},
                        child:Row(children: <Widget>[
                          Icon(Icons.ac_unit),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Text("Google",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                        ],)
                      )
                    ),
                  ],),
                  Padding(padding: EdgeInsets.all(8.0)),
                   Padding(padding: EdgeInsets.all(8.0)),
                  GestureDetector(
                    child:Center(child: Text("Skip For Now",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),),
                    onTap: (){},
                  ),
                   Padding(padding: EdgeInsets.all(8.0)),
                    Padding(padding: EdgeInsets.all(8.0)),
                     Padding(padding: EdgeInsets.all(8.0)),

                ],)
              )              
              
            ],
          ),
          Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            
            image:DecorationImage(
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstOut),
              image:AssetImage("assets/images/background.jpg"),
              
              
            ),
            
          ),
        
        ),
        ],
         
      ),
    );
  }
}
