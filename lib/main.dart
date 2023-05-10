import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: const Text("My first Flutter app"),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("the current date is $time"),
              Text("Date ${time.day}"),
              Text("month ${time.month}"),
              Text("Day ${time.weekday}"),
              ElevatedButton(onPressed: (){
                setState((){

                });
              }, child: Text('Continue'))
            ],
          )
        ),
    );
  }
}
