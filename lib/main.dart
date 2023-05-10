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
      home:MyHomePage(),
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
        body: ListView.separated(
            itemBuilder: (context, index){
              return( ListTile(
                leading: Container(
                  child: CircleAvatar(
                    // child:Column(
                    //   children: [
                    //     Image.asset('assets/images/spiderCalvin.jpeg'),
                    //     Text(arrNames[index])
                    //   ],
                    // ),
                    backgroundImage: AssetImage('assets/images/spiderCalvin.jpeg'),
                    // maxRadius: 80,
                  ),
                ),
                title:Text(arrNames[index]),
                subtitle:Text(arrNames[index]),
                trailing: Icon(Icons.heart_broken)
              ));
            },
            separatorBuilder: (context, index){
              return( const Divider(height: 20, thickness: 5,) );
            },
            itemCount: arrNames.length)
    );
  }
}
