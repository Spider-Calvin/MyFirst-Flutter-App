import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var arrNames = ['Calvin', 'Krupa', 'Navya', 'Panda', 'Sinchana'];

  MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My first Flutter app"),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.cyanAccent,
          child:Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.pink,
                // borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width:5,
                  color: Colors.indigoAccent
                ),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 11,
                    spreadRadius: 15,
                    color:Colors.white,
                  )
                ],
                shape: BoxShape.circle

              ),
            ),
          )
        )
    );
  }
}
