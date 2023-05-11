import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          labelLarge:TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      home:MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePage createState() => _MyHomePage();
}


class _MyHomePage extends State<MyHomePage>  {
  var email = TextEditingController();
  var colorsArray = [
    Colors.deepOrange,
    Colors.pink,
    Colors.blue,
    Colors.deepOrange,
    Colors.amber,
    Colors.purple,
    Colors.yellow,
    Colors.red,
    Colors.cyan,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text("My first Flutter app"),
        ),
        body:Container(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                color: colorsArray[0],
              ),
              Positioned(
                left: 21,
                top: 21,
                child: Container(
                  height: 200,
                  width: 200,
                  color: colorsArray[1],
                ),
              ),
            ],
          ),
        )


    );
  }
}
