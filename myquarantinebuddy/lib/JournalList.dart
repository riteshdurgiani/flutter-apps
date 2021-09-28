import 'package:flutter/material.dart';


class JournalList extends StatefulWidget {
  @override
  _JournalListState createState() => _JournalListState();
}

class _JournalListState extends State<JournalList> {
  
  final FixedExtentScrollController _controller = FixedExtentScrollController();
  // List journal = ['Oxygen','Temperature','Journal3','Journal4'];
  List<Widget> listtiles = [
    Card(
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(40.0)
      ),
      color:Colors.pink,
      child:InkWell(
          child: ListTile(
          leading: Icon(Icons.airline_seat_flat),
          title:Text("Check Oxygen") ,
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      )
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(40.0)
      ),
      color:Colors.pink,
      child:InkWell(
              child: ListTile(
          leading: Icon(Icons.airline_seat_flat),
          title:Text("Check Oxygen") ,
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      )
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(40.0)
      ),
      color:Colors.pink,
      child:InkWell(
              child: ListTile(
          leading: Icon(Icons.airline_seat_flat),
          title:Text("Check Oxygen") ,
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      )
    ),
    Card(
      
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(40.0)
      ),
      color:Colors.pink,
      child:InkWell(
              child: ListTile(
          leading: Icon(Icons.airline_seat_flat),
          title:Text("Check Oxygen") ,
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      )
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(40.0)
      ),
      color:Colors.pink,
      child:InkWell(
              child: ListTile(
          leading: Icon(Icons.airline_seat_flat),
          title:Text("Check Oxygen") ,
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      )
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(40.0)
      ),
      color:Colors.pink,
      child:InkWell(
              child: ListTile(
          leading: Icon(Icons.airline_seat_flat),
          title:Text("Check Oxygen") ,
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      )
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(40.0)
      ),
      color:Colors.pink,
      child:InkWell(
              child: ListTile(
          leading: Icon(Icons.airline_seat_flat),
          title:Text("Check Oxygen") ,
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      )
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Quarantine Journal"),
        centerTitle:true,

      ),
      body: Container(
        child:ListWheelScrollView(
          diameterRatio: 2.0,
          controller: _controller,
           children:listtiles,
          itemExtent: 80,
          
          physics: FixedExtentScrollPhysics(),
        
         
        //   children: <Widget>[
        //   ListView.builder(
        //     itemCount: journal.length,
        //     itemBuilder: (context, index)  {
        //       return ListTile(
        //         leading: Icon(Icons.select_all),
        //         title:InkWell(
        //           child:Text(journal[index]),
        //           onTap: (){},
        //         ),
        //       );
        //     },

        //   )
        // ],)
      ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child:Icon(Icons.add),),

      bottomNavigationBar: BottomAppBar(
        color:Colors.purple,
        child: Container(height: 50,),
        

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
} 

