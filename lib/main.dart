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
      body: Center(
        child: InkWell(
          onTap: (){
            print("Tapped on tap of ink well");
          },
          onDoubleTap: (){
            print("Double Tapped on tap of ink well");
          },
          child: Container(
            height: 50,
            width: 200,

            color: Colors.yellow,
            child: Center(child: InkWell(
                onTap: (){
                  print("Tapped on inner text");
                },
                onDoubleTap: (){
                  print("Double Tapped on on inner text");
                },
                child: Text("Custom Button")
            )),
          ),
        )
      )
    );
  }
}
