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
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal),
          bodyMedium: TextStyle(fontSize: 20.0, fontFamily: 'Nunito'),
          labelSmall:  TextStyle(fontSize: 20.0, fontFamily: 'Nunito'),
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
        body:Column(
          children: [
            Text(
              'Text with a background color',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              'Text with a background color',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.pink),
            ),Text(
              'Text with a background color',
              style: mytextStyle(),
            ),
            Text(
              'Text with a background color',
              style: mytextStyle2(textColor: Colors.deepOrangeAccent),
            ),
          ],
        ),
    );
  }
}
