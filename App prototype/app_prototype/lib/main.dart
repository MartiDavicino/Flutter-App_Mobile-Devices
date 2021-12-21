import 'package:app_prototype/catalogue.dart';
import 'package:flutter/material.dart';
import 'package:app_prototype/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_web/firebase_core_web.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
