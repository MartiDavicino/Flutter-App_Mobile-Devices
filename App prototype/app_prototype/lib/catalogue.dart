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
            BurgerCard("Burger #1"),
            BurgerCard("Burger #2"),
            BurgerCard("Burger #3"),
            BurgerCard("Burger #4"),
            BurgerCard("Burger #1"),
            BurgerCard("Burger #2"),
            BurgerCard("Burger #3"),
            BurgerCard("Burger #4"),
          ],
        ),
      ),
    );
  }
}

class BurgerCard extends StatelessWidget {
  final String name;
  const BurgerCard(
    this.name, {
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
        },
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              height: 180,
              width: 180,
              color: Colors.grey,
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
