import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:my_first_flutterapp/widgets/roundedbtn.dart';
import 'package:my_first_flutterapp/ui_helper/util.dart';

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
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 50,
                child: RoundedButton(
                  btnName: 'Play',
                  icon: Icon(Icons.play_arrow),
                  textStyle: mTextStyle16(),
                  callback: () {
                    print("Logged in!!");
                  },
                ),
              ),
              Container(
                height: 11,
              ),
              Container(
                width: 150,
                height: 50,
                child: RoundedButton(
                  btnName: 'Press',
                  bgColor: Colors.orange,
                  textStyle: mTextStyle21(),
                  callback: () {
                    print("Logged in!!");
                  },
                ),
              ),
            ],
          ),
        )


    );
  }
}
