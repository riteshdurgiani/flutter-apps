import 'package:flutter/material.dart';

class NumberAudio{
  String audioURI;
  MaterialColor buttonColor;
  String buttonText;

  NumberAudio(String aU,MaterialColor bC,String bT){
    this.audioURI = aU;
    this.buttonColor = bC;
    this.buttonText = bT;
  }
}