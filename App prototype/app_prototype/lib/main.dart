import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MaterialApp(
      title: "Burger Collection",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burger Collection"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text("This is the collection"),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
