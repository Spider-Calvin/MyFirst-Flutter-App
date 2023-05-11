import 'dart:ui';
import 'package:flutter/material.dart';

TextStyle mytextStyle(){
  return TextStyle(fontWeight: FontWeight.w600, color: Colors.blue);
}

TextStyle mytextStyle2({Color textColor=Colors.pink}){
  return TextStyle(fontWeight: FontWeight.w600, color: textColor);
}

TextStyle mTextStyle11({Color textColor = Colors.black, FontWeight fontWeight = FontWeight.normal}){
  return TextStyle(
      fontSize: 17,
      color: textColor,
      fontWeight: fontWeight
  );
}
TextStyle mTextStyle16(){
  return TextStyle(
    fontSize: 16,
  );
}
TextStyle mTextStyle21(){
  return TextStyle(
    fontSize: 21,
  );
}