import 'package:flutter/material.dart';
import 'TrendingNews.dart';

class NewsHome extends StatefulWidget {
  @override
  _NewsHomeState createState() => _NewsHomeState();
}

class _NewsHomeState extends State<NewsHome> with SingleTickerProviderStateMixin {

  String topic;
TabController _tabController;
 @override
 void initState() {
    // TODO: implement initState
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:ListTile(
          leading: Text("News Buddy",style:TextStyle(fontSize: 20)),
          trailing:GestureDetector(
            child:Icon(Icons.mic,color: Colors.white,),
            onTap: (){},
          ),
          
         
        ),
       
        elevation: 0,
        bottom: TabBar(
          isScrollable : false,
          tabs:[
            new Tab(
              text: "Trending",
              icon: Icon(Icons.trending_up),
            ),
             new Tab(
              text: "Trending Tags",
              icon: Icon(Icons.trending_up),
            )
          ],
          controller: _tabController,
        ),
      ),
      drawer: Drawer(
        elevation: 2.0,
        child: ListView(
          children: <Widget>[
             UserAccountsDrawerHeader(
             accountName: Text('Your News Buddy'),
             accountEmail: Text('Everything News'),
             currentAccountPicture: CircleAvatar(
               
               child:Image(
                 height:200,
                 width:200,
                 image:AssetImage("assets/images/newsicon.jpg")
                 
               )
             ),
           ),
           ListTile(
             title:Text('Home'),
             trailing:Icon(Icons.home)
           ),
           ListTile(
             title:Text('Your Account'),
             trailing:Icon(Icons.account_box),
             
           ),
           ListTile(
             title:Text('Choices'),
             trailing:Icon(Icons.select_all),

           ),
           ListTile(
             title:Text('About Us'),
             trailing:Icon(Icons.info),
             
           ),
           ListTile(
             title:Text("Close"),
             trailing:Icon(Icons.close),
             onTap: (){},
           )

          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
            SingleChildScrollView(
            child: Container(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            
              
              children: <Widget>[
                ListTile(
                  leading:Icon(Icons.search),
                  title: TextField(
                   
                    decoration:InputDecoration(
                            hintText: 'Search Topic' ,   
                            hintStyle: TextStyle(color: Colors.blueGrey[300])
                        
                          ),
                       
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Trending : Political",
                  
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),

                Container(
                  height:170,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context,idx){
                        return Container(
                          height: 160,
                          width:340,
                          child: Card(
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(5.0)
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  
                                  child:Image(
                                    height: 100,
                                    image:AssetImage("assets/images/politics.jpg")
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                    Text("India China War"),
                                    Text("Trump Reacts")
                                  ],),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Trending : Global",
                  
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                Container(
                  height:170,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context,idx){
                        return Container(
                          
                          height: 160,
                          width:340,
                          child: Card(
                             elevation: 3.0,
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(5.0)
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  
                                  child:Image(
                                    height: 100,
                                    image:AssetImage("assets/images/global.png")
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                    Text("Israel Attacks Iran"),
                                    Text("Destroys Airbase")
                                  ],),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Trending : Sports",
                  
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                Container(
                  height:170,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context,idx){
                        return Container(
                          height: 160,
                          width:340,
                          child: Card(
                             elevation: 3.0,
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(5.0)
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  
                                  child:Image(
                                    height: 100,
                                    image:AssetImage("assets/images/global.png")
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                    Text("Israel Attacks Iran"),
                                    Text("Destroys Airbase")
                                  ],),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
                
             
            ],)
          ),
        ),
        SingleChildScrollView(
            child: Container(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ChoiceChip(label: Text("TrumIndiaTies"), selected: false,
                      onSelected: (selected){
                       if(selected==false){
                         setState(() {
                           selected = true;
                         });
                       }
                       else{
                         setState(() {
                           selected=false;
                         });
                       }
                      },
                      ),
                      Padding(padding: EdgeInsets.all(10.0)),
                       ChoiceChip(label: Text("#TrumIndiaTies"), selected: false,
                      onSelected: (selected){
                       if(selected==false){
                         setState(() {
                           selected = true;
                         });
                       }
                       else{
                         setState(() {
                           selected=false;
                         });
                       }
                      },
                      ),
                      
                      
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      ChoiceChip(label: Text("#TrumIndiaTies"), selected: false,
                      onSelected: (selected){
                       if(selected==false){
                         setState(() {
                           selected = true;
                         });
                       }
                       else{
                         setState(() {
                           selected=false;
                         });
                       }
                      },
                      ),
                       
                      
                    ],
                  ),
                  
                  Row(
                    children: <Widget>[
                      ChoiceChip(label: Text("#TrumIndiaTies"), selected: false,
                      onSelected: (selected){
                       if(selected==false){
                         setState(() {
                           selected = true;
                         });
                       }
                       else{
                         setState(() {
                           selected=false;
                         });
                       }
                      },
                      ),
                      Padding(padding: EdgeInsets.all(10.0)),
                       ChoiceChip(label: Text("#TrumIndiaTies"), selected: false,
                      onSelected: (selected){
                       if(selected==false){
                         setState(() {
                           selected = true;
                         });
                       }
                       else{
                         setState(() {
                           selected=false;
                         });
                       }
                      },
                      ),
                      

                    ],
                  )
                ],
              ),
            )
          ),
        )
        ],
        controller: _tabController,
      ),
      
    
      
    );
  }
}