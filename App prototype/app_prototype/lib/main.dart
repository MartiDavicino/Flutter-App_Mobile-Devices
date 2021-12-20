import 'package:flutter/material.dart';
import 'package:app_prototype/homepage.dart';

//import 'package:firebase_core/firebase_core.dart';
//const MaterialColor myColor = Colors.brown;
//const Color primaryColor = Colors.brown;
//const Color secondaryColor = Colors.orange;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Burger App",
      // theme: ThemeData(
      //   primarySwatch: myColor,
      // ),
      home: HomePage(),
    );
  }
}
