import 'dart:ui';

import 'package:app_prototype/burgerdetail.dart';
import 'package:flutter/material.dart';

class Catalogue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalogue", style: TextStyle(fontSize: 30)),
      ),
      body: Container(
        child: GridView.count(
          childAspectRatio: 2 / 2.2,
          crossAxisCount: 2,
          children: const [
            BurgerCard("Burger #1", 1),
            BurgerCard("Burger #2", 2),
            BurgerCard("Burger #3", 3),
            BurgerCard("Burger #4", 4),
            BurgerCard("Burger #1", 1),
            BurgerCard("Burger #2", 2),
            BurgerCard("Burger #3", 3),
            BurgerCard("Burger #4", 4),
          ],
        ),
      ),
    );
  }
}

class BurgerCard extends StatelessWidget {
  final String name;
  final int img;
  const BurgerCard(
    this.name,
    this.img, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      color: Colors.blueAccent,
      child: InkWell(
        onTap: () {
          print("Burger card tapped");
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => BurgerDetails(name),
            ),
          );
        },
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              height: 180,
              width: 180,
              color: Colors.grey,
              child: Image(
                image: AssetImage("assets/" + img.toString() + "png"),
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
