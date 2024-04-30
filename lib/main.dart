import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todoapp/dashboard.dart';
import 'package:todoapp/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));});
  }
  @override
  Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         backgroundColor: Colors.blue,
        body: Center(
               child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ToDo'S",
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("things you want to Do !",
                  style: TextStyle(
                    fontSize: 20
                  ),)
                ],
              )
            ],
          ),
        ),
       ),
     );
  }
}
