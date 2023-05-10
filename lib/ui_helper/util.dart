import 'dart:ui';
import 'package:flutter/material.dart';

TextStyle mytextStyle(){
  return TextStyle(fontWeight: FontWeight.w600, color: Colors.blue);
}

TextStyle mytextStyle2({Color textColor=Colors.pink}){
  return TextStyle(fontWeight: FontWeight.w600, color: textColor);
}