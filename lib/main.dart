import 'package:flutter/material.dart';
import 'package:flutterasynbatch3/FirstScreen.dart';
import 'package:flutterasynbatch3/SecondScreen.dart';
import 'package:flutterasynbatch3/functions.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      initialRoute: '/',

      routes: {
        '/':(context) => FirstScreen(),
        '/second':(context) => SecondScreen(),

      },
    );
  }
}
