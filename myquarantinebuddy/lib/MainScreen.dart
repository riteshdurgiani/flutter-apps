import 'package:flutter/material.dart';
import 'CustomPopUpMenu.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}
List choices = [
  CustomPopUpMenu(title:'Share',icon:Icons.share),
  CustomPopUpMenu(title:'Option Two',icon:Icons.share),
];
class _MainScreenState extends State<MainScreen> {
  CustomPopUpMenu _selectedChoices = choices[0];
  void _select(CustomPopUpMenu choice){
    setState(() {
      _selectedChoices = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Quarantine Buddy"),
        // actions:[
        //   PopupMenuButton(
        //     elevation:2.3,
        //     initialValue: choices[0],
        //     onCanceled: (){
        //       print("No choice selected");
        //     },
        //     onSelected: _select,
        //     itemBuilder: (BuildContext context){
        //       return choices.map((CustomPopUpMenu choices){
        //         return PopupMenuItem(
        //           value:choices,
        //           child:Text(choices.title)
        //         );
        //       }).toList();
        //     },

        //   )
        // ],
      ),
      body:Column(children: <Widget>[

          Padding(padding: EdgeInsets.all(8.0)),
          Card(
            elevation:2.0,
            child:Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(8)),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Center(
                  child:Text("Covid Updates",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),)
                  
                )
               
              ],),
              Divider(),
              Padding(padding: EdgeInsets.all(5.0)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Worldwide :",textAlign: TextAlign.left,style: TextStyle(fontStyle:FontStyle.italic,fontWeight:FontWeight.bold),),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                Card(
                  child: Column(children: <Widget>[
                    Text("14030000",style: TextStyle(fontSize:15,fontWeight:FontWeight.bold),),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text("Infected",style: TextStyle(fontSize:15,color: Colors.grey),)
                  ],),
                )  ,
                Card(
                  child: Column(children: <Widget>[
                    Text("14030000",style: TextStyle(fontSize:15,fontWeight:FontWeight.bold),),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text("Infected",style: TextStyle(fontSize:15,color: Colors.grey),)
                  ],),
                )  ,
                Card(
                  child: Column(children: <Widget>[
                    Text("14030000",style: TextStyle(fontSize:15,fontWeight:FontWeight.bold),),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text("Infected",style: TextStyle(fontSize:15,color: Colors.grey),)
                  ],),
                )  ,
                Card(
                  child: Column(children: <Widget>[
                    Text("14030000",style: TextStyle(fontSize:15,fontWeight:FontWeight.bold),),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text("Infected",style: TextStyle(fontSize:15,color: Colors.grey),)
                  ],),
                )  
              
              ],),

              Padding(padding: EdgeInsets.all(5.0)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("India :",textAlign: TextAlign.left,style: TextStyle(fontStyle:FontStyle.italic,fontWeight:FontWeight.bold),),
              ),
              Padding(padding: EdgeInsets.all(5.0)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                Card(
                  child: Column(children: <Widget>[
                    Text("14030000",style: TextStyle(fontSize:15,fontWeight:FontWeight.bold),),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text("Infected",style: TextStyle(fontSize:15,color: Colors.grey),)
                  ],),
                )  ,
                Card(
                  child: Column(children: <Widget>[
                    Text("14030000",style: TextStyle(fontSize:15,fontWeight:FontWeight.bold),),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text("Infected",style: TextStyle(fontSize:15,color: Colors.grey),)
                  ],),
                )  ,
                Card(
                  child: Column(children: <Widget>[
                    Text("14030000",style: TextStyle(fontSize:15,fontWeight:FontWeight.bold),),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text("Infected",style: TextStyle(fontSize:15,color: Colors.grey),)
                  ],),
                )  ,
                Card(
                  child: Column(children: <Widget>[
                    Text("14030000",style: TextStyle(fontSize:15,fontWeight:FontWeight.bold),),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text("Infected",style: TextStyle(fontSize:15,color: Colors.grey),)
                  ],),
                )  
              
              ],),
              Padding(padding: EdgeInsets.all(5.0)),
          Padding(padding: EdgeInsets.all(5.0)),
            ],)
          ),
          Card(
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                Icon(Icons.snooze,size:50,),
                Icon(Icons.ac_unit,size:50,),
                Icon(Icons.accessibility_new,size:50,),
                  

              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(16.0)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                      width: 400,
                      child:RaisedButton(
                        onPressed : (){},
                        child:Text("Write Journal",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        padding: EdgeInsets.all(10.0),
                        // color: Colors.pink,
                      )
                    ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                      width: 400,
                      child:RaisedButton(
                        onPressed : (){},
                        child:Text("My Timeline",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        padding: EdgeInsets.all(10.0),
                        // color: Colors.pink,
                      )
                    ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                      width: 400,
                      child:RaisedButton(
                        onPressed : (){},
                        child:Text("Covid-19 Infographics",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        padding: EdgeInsets.all(10.0),
                        // color: Colors.pink,
                      )
                    ),
          ),


      ],),


    );
  }
}