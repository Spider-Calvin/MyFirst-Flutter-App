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
      body: ListView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            children:const [
              Padding(
                  padding:EdgeInsets.all(11),
                   child:Text('first')
              ),
              Padding(
                  padding:EdgeInsets.all(11),
                  child:Text('second')
              ),
              Padding(
                  padding:EdgeInsets.all(11),
                  child:Text('third')
              ),
              Padding(
                  padding:EdgeInsets.all(11),
                  child:Text('fourth')
              ),
              Padding(
                  padding:EdgeInsets.all(11),
                  child:Text('fifth')
              )
            ],
      )
    );
  }
}
