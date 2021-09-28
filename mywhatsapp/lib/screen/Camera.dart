import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';
class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File _image;
  @override
  Widget build(BuildContext context) {
    return Container(
      floatingActionButton: FloatingActionButton(
        onPressed: _optionsDialogBox,
        child: Icon(Icons.add_a_photo),
        tooltip: 'Open Camera',
      ),
    );
  }
  Future openCamera() async {
   var image = await ImagePicker.pickImage(
     source  : ImageSource.camera
   );
   setState(() {
    _image = image; 
   });

 }
  Future openGallery() async {
   var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
   setState(() {
     _image = picture;
   });
 }
  Future <void> _optionsDialogBox(){
   return showDialog(
     context: context,
     builder: (BuildContext context){
       return AlertDialog(
         backgroundColor: Colors.blue,
         shape: StadiumBorder(),
         content: SingleChildScrollView(child: ListBody(
           children: <Widget>[
             GestureDetector(
               child: Text('Take a Picture',style : TextStyle(color: Colors.white, fontSize: 20.0)),
               onTap: openCamera,
             ),
             Padding(padding: EdgeInsets.all(10.0),),
             GestureDetector(
               child: Text('Select From Gallery',style : TextStyle(color: Colors.white, fontSize: 20.0)),
               onTap: openGallery,
             ),
           ],
         ),),
       );
     }
   );


 }
}