import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  dynamic doc;
  AboutUs(this.doc, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              doc["AboutUs"],
              style: const TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
