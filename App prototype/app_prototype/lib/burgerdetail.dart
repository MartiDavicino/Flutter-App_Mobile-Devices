import 'package:flutter/material.dart';

class BurgerDetails extends StatelessWidget {
  final String name;
  const BurgerDetails(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            height: 300,
            width: 300,
          ),
          Container(
            child: Text(name),
          ),
          Container(
            child: Text("Hmm que guena la borgir"),
          )
        ],
      ),
    );
  }
}
