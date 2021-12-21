import 'package:app_prototype/catalogue.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:app_prototype/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_web/firebase_core_web.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;
    return MaterialApp(
      title: "Burger App",
      home: Scaffold(
        body: Container(
            child: Column(children: [
          const Header("Borgir app"),
          StreamBuilder(
            stream: db.doc("/Test/AmBB8HBTpbgZxOEOVbEW").snapshots(),
            builder: (BuildContext context,
                AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>>
                    snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              final doc = snapshot.data!.data();
              if (doc != null) {
                return Center(child: Text(doc["text"]));
              } else {
                return const Center(child: Text("doc is null!"));
              }
            },
          ),
          //HomePageButton(
          //"HomePage", MaterialPageRoute(builder: (context) => HomePage())),
          //FutureBuilder(future: db.collection('Test').getDocuments(),
          //builder: (context, AsyncSnapshot<QuierySnapshot> snapshot) {
// Construir un widget en función de los datos
//},
          //)
        ])),
        appBar: AppBar(
          title: const Text("barra de prueba"),
        ),
      ),
    );
  }
}
