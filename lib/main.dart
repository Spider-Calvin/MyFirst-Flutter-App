import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

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
              Text("the current date is ${DateFormat('jms').format(time)}"),
              ElevatedButton(onPressed: () async{
                DateTime? date = await showDatePicker(
                  context: context,
                  initialDate:DateTime.now() ,
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2025),
                );
                if (date != null ) {
                  print("Selected date is $date");
                }
              }, child: Text('Select date')),
              ElevatedButton(onPressed: () async{
                TimeOfDay? Time = await showTimePicker(
                  context: context,
                  initialTime:TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.dial,
                );
                if (Time != null ) {
                  print("Selected Time is $Time");
                }
              }, child: Text('Select Time'))
            ],
          )
        ),
    );
  }
}
