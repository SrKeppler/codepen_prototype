import 'package:flutter/material.dart';
import 'package:codepen_project/screens/main_screen.dart';
import 'package:codepen_project/util/const.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.darkTheme,
      home: MainScreen(),
    );
  }
}
