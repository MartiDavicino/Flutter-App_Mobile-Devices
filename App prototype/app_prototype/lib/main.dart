import 'package:app_prototype/catalogue.dart';
import 'package:flutter/material.dart';
import 'package:app_prototype/homepage.dart';

// //import 'package:firebase_core/firebase_core.dart';
// //const MaterialColor myColor = Colors.brown;
// //const Color primaryColor = Colors.brown;
// //const Color secondaryColor = Colors.orange;
// =======
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_core_web/firebase_core_web.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MaterialApp(
//     title: "Burger Collection",
//     home: Catalogue(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

//>>>>>>> 8e5c7b0ad6a19beebe188c7e2af5e2913dedc8c2

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
