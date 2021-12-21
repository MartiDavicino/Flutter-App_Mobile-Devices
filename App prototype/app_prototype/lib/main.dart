import 'package:app_prototype/catalogue.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:app_prototype/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_web/firebase_core_web.dart';

import 'config.dart';

final configurations = Configurations();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
      apiKey: configurations.apiKey,
      appId: configurations.appId,
      messagingSenderId: configurations.messagingSenderId,
      projectId: configurations.projectId,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final db =
      FirebaseFirestore.instance.doc("/Data/ZqaA5SR06h9mGHgl7sDE").snapshots();
  dynamic doc;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return MaterialApp(
              home: Scaffold(
                  body: Center(
                      child: Text(snapshot.error.toString(),
                          textDirection: TextDirection.ltr))),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            // FIREBASE IS BEING INITIALIZED
            return MaterialApp(
                home: Scaffold(
                    body: Container(
                        child: Column(children: [
              const Header("Borgir app"),
              StreamBuilder(
                  stream: db,
                  builder: (BuildContext context,
                      AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>>
                          snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    doc = snapshot.data!.data();
                    if (doc != null) {
                      return Center(child: Text(doc["Name"]));
                    } else {
                      return const Center(child: Text("doc is null!"));
                    }
                  }),
              HomePageButton(
                "Home Page",
                MaterialPageRoute(builder: (context) => HomePage(doc)),
              )
            ]))));
          }
          // Loading Connection
          return MaterialApp(
              home: Scaffold(
            body: Center(
              child: Container(
                child: Text("Loading..."),
              ),
            ),
          ));
        });
  }
}
