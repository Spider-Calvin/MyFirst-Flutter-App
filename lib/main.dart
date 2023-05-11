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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text("My first Flutter app"),
        ),
        body: RichText(
          text: TextSpan(
              style: TextStyle(
                color: Colors.grey,
                fontSize: 21,
              ),
              children:<TextSpan>[
                TextSpan(text: 'Hello ', ),
                TextSpan(text: 'World! ', style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold)),
                TextSpan(text: 'Welcome to ',),
                TextSpan(text: 'Flutter', style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 35, color: Colors.deepOrangeAccent,
                  fontStyle:FontStyle.italic,
                )),

              ]
          ),
        )

    );
  }
}
