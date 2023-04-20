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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first coontaines"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children:[
                Container(
                  height: 200,
                  color : Colors.yellow
                ),
                Container(
                    height: 200,
                    color : Colors.blue
                ),
                Container(
                    height: 200,
                    color : Colors.greenAccent
                ),
                Container(
                    height: 200,
                    color : Colors.red
                ),
                Container(
                    height: 200,
                    color : Colors.yellow
                ),
                Container(
                    height: 200,
                    color : Colors.tealAccent
                ),
                Container(
                    height: 200,
                    color : Colors.blue
                )
              ],
            ),
          ],
        )
      )
    );
  }
}
