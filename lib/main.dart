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
        body:Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: 30,
                minWidth: 100,
                // maxWidth: 100,
                // maxHeight: 30
            ),
            child: SizedBox.shrink(
              child: ElevatedButton(onPressed: (){}, child: Text("Click"),),
            ),
          ),
        )



      //   child: SizedBox.expand(
      //   child: ElevatedButton(onPressed: (){}, child: Text("Click"),),
      // ))


      //
      // SizedBox(
      //   width: 200,
      //   height: 50,
      //   child: ElevatedButton(onPressed: (){}, child: Text("Click"),),
      // )),

    );
  }
}
