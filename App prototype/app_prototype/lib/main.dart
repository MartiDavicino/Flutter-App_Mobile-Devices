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
              theme: ThemeData(primaryColor: configurations.mainColor),
              home: Scaffold(
                body: Center(
                  child: Text(snapshot.error.toString(),
                      textDirection: TextDirection.ltr),
                ),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            // FIREBASE IS BEING INITIALIZED
            return MaterialApp(
              home: Scaffold(
                body: Container(
                  child: Column(
                    children: [
                      const Header("Burger collection"),
                      StreamBuilder(
                          stream: db,
                          builder: (BuildContext context,
                              AsyncSnapshot<
                                      DocumentSnapshot<Map<String, dynamic>>>
                                  snapshot) {
                            if (!snapshot.hasData) {
                              return const Center(
                                  child: CircularProgressIndicator());
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
                      ),
                      LogoAnimation(),
                    ],
                  ),
                ),
              ),
            );
          }
          // Loading Connection
          return MaterialApp(
              home: Scaffold(
            body: Center(
              child: Container(
                child: const Text("Loading..."),
              ),
            ),
          ));
        });
  }
}

//Logo Animation
class LogoAnimation extends StatefulWidget {
  const LogoAnimation({Key? key}) : super(key: key);

  @override
  _AnimatedRotatingGalaxyDemoState createState() =>
      _AnimatedRotatingGalaxyDemoState();
}

class _AnimatedRotatingGalaxyDemoState extends State<LogoAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> _rotation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    controller.repeat();
    _rotation = controller;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RotationTransition(
            turns: _rotation,
            child: Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(10),
              color: Colors.blue,
              child: const Center(child: Text("Logo")),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
