import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
      ),
      body: Column(
        children: [
          Container(
            child: const Text("Somos los chabales que tocan la flauta"),
          )
        ],
      ),
    );
  }
}
