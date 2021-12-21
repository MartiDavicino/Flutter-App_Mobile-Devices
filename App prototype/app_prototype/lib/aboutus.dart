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
            alignment: Alignment.center,
            child: Text(doc["AboutUs"]),
          )
        ],
      ),
    );
  }
}
