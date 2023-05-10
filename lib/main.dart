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

class MyHomePage extends StatelessWidget {
  var arrNames = ['Calvin', 'Krupa', 'Navya', 'Panda', 'Sinchana'];
  var email = TextEditingController();

  MyHomePage({super.key});
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
                width: 300,
                margin: EdgeInsets.all(10),
                child: TextField(
                  controller: email,
                decoration: InputDecoration(
                  // labelText: 'Email',
                  hintText: 'Email enter',
                  prefixIcon: Icon(Icons.person),
                  suffixText: 'So',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: (){

                    },
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Colors.yellow,
                      width: 2.0,
                    ),
                  ),
                )
                ),
              ),
              Container(
                width: 300,
                margin: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                    keyboardType: TextInputType.number,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Colors.yellow,
                          width: 2.0,
                        ),
                      ),
                    )
                ),
              ),
              Container(
                width: 300,
                margin: EdgeInsets.all(10),
                child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Colors.pink,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                    )
                ),
              ),
              ElevatedButton(onPressed: (){
                String uEmail = email.text.toString();
                print('$uEmail');
              }, child: Text('Continue'))
            ],
          )
        ),
    );
  }
}
