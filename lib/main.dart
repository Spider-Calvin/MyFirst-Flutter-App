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
        body: Column(
          children:[
            Expanded(
              flex:2,
              child: Container(
                height:100,
                color:Colors.cyan
              ),
            ),
            Container(
                height:100,
                color:Colors.pink
            ),
            Container(
              margin: EdgeInsets.all(20),
                color:Colors.yellow,
                child: const Padding( padding:EdgeInsets.all(20),child: Text("Hello I am text"))
            ),
            Expanded(
              child: Container(
                  height:100,
                  color:Colors.purple
              ),
            )
          ]
        )
    );
  }
}
