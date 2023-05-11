import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        body: Container(
          child:Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.spaceEvenly,
            spacing: 11,
            runSpacing: 11,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.cyan,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.teal,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.purple,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.black,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              ),

            ],
          ),
        )


    );
  }
}
