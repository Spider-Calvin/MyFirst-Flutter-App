import 'package:flutter/material.dart';
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

class MyHomePage extends StatelessWidget {
  var arrNames = ['Calvin', 'Krupa', 'Navya', 'Panda', 'Sinchana'];

  MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My first Flutter app"),
        ),
        body:Center(
          child: Container(
            margin:const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Calvin',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.deepOrange,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'krupa',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.pink),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
