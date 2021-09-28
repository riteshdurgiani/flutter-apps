import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';


class DrawerPage extends StatefulWidget {
  
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  CalendarController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title:Text('Drawer')

     ),
     drawer: Drawer(
       child: ListView(
         children: <Widget>[
           UserAccountsDrawerHeader(
             accountName: Text('Rajesh'),
             accountEmail: Text('advanirg@gmail.com'),
             currentAccountPicture: CircleAvatar(
               backgroundColor:Colors.orange,
               child:Text('RA')
             ),
           ),
           ListTile(
             title:Text('Home'),
             trailing:Icon(Icons.home)
           ),
           Divider(),
           ListTile(
             title:Text('My Requests'),
             
           ),
           ListTile(
             title:Text('Leave'),
             trailing:Icon(Icons.time_to_leave)

           ),
           ListTile(
             title:Text('OD'),
             trailing:Icon(Icons.info)
           ),
           ListTile(
             title:Text('Attendance'),
             trailing:Icon(Icons.calendar_today)

           ),
           ListTile(
             title:Text('Shift'),
             trailing:Icon(Icons.filter_tilt_shift)
           ),
           ListTile(
             title:Text('Travel'),
             trailing:Icon(Icons.card_travel)
           ),
           ListTile(
             title:Text('Travel Claims'),
             trailing:Icon(Icons.warning)
           ),
           ListTile(
             title:Text('Claims'),
             trailing:Icon(Icons.warning)
           ),
           Divider(),
           ListTile(
             title:Text('My Approvals'),
            
           ),
           ListTile(
             title:Text('Leave'),
             trailing:Icon(Icons.time_to_leave)

           ),
           ListTile(
             title:Text('OD'),
             trailing:Icon(Icons.info)
           ),
           ListTile(
             title:Text('Attendance'),
             trailing:Icon(Icons.calendar_today)

           ),
           ListTile(
             title:Text('Shift'),
             trailing:Icon(Icons.filter_tilt_shift)
           ),
           ListTile(
             title:Text('Travel'),
             trailing:Icon(Icons.card_travel)
           ),
           ListTile(
             title:Text('Travel Claims'),
             trailing:Icon(Icons.warning)
           ),
           ListTile(
             title:Text('Claims'),
             trailing:Icon(Icons.warning)
           ),
           Divider(),
           ListTile(
             title:Text('Celebrations'),
             trailing:Icon(Icons.event),
             onTap:()=> Navigator.of(context).pushNamed("/celebrations"),
           ),
           Divider(),
           ListTile(
             title:Text('Holidays'),
             trailing:Icon(Icons.weekend)
           ),
           Divider(),
           ListTile(
             title:Text('Settings'),
             trailing:Icon(Icons.settings)
           ),
           Divider(),
           ListTile(
             title:Text('Clock In/Clock Out'),
             trailing:Icon(Icons.time_to_leave)
           ),
           Divider(),
           ListTile(
             title:Text('Inbox/Notifications'),
             trailing:Icon(Icons.notification_important)
           ),
         ],
       )
     ),
     body: Container(
       padding: EdgeInsets.only(left:10.0,right:10.0),
       child:Column(
         
        //  mainAxisAlignment: MainAxisAlignment.center,
        //  crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
          TableCalendar(calendarController: _controller),
          Padding(padding: EdgeInsets.all(10)),
          Divider(),
          Text("Progress Indicators:",
          style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          textAlign: TextAlign.left, 
          ),
           Padding(padding: EdgeInsets.all(10)),

          Container(
            padding: EdgeInsets.all(10),
            child: Center(
              
              child: FAProgressBar(
                
                currentValue:30,
                animatedDuration:Duration(seconds: 2),
                size:20 ,
                

              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Center(
              
              child: FAProgressBar(
                
                currentValue:80,
                animatedDuration:Duration(seconds: 2),
                size:20 ,
                progressColor: Colors.deepPurple,
                
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Center(
              
              child: FAProgressBar(
                
                currentValue:60,
                
                animatedDuration:Duration(seconds: 2),
                size:20 ,
                progressColor: Colors.orangeAccent,
              ),
            ),
          ),
           Container(
            padding: EdgeInsets.all(10),
            child: Center(
              
              child: FAProgressBar(
                
                currentValue:20,
                animatedDuration:Duration(seconds: 2),
                size:20 ,
                progressColor: Colors.blueAccent,
              ),
            ),
          ),

         ],
       )
     ),
    );
  }
}