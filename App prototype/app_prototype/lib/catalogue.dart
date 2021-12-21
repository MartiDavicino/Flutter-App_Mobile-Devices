import 'dart:ui';

import 'package:app_prototype/burgerdetail.dart';
import 'package:flutter/material.dart';

List<Burger> burgerList = [];

class Catalogue extends StatelessWidget {
  const Catalogue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    Burger a = Burger("jfaj", 1, 1);
    burgerList.add(a);
    //
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalogue", style: TextStyle(fontSize: 30)),
      ),
      body: GridView.count(
        childAspectRatio: 2 / 2.2,
        crossAxisCount: 2,
        children: [
          //burgerList.add(Burger("hola,",1,1)),
          BurgerCard("Burger #1", 1),
          BurgerCard("Burger #2", 2),
          BurgerCard("Burger #3", 3),
          BurgerCard("Burger #4", 4),
          BurgerCard("Burger #5", 1),
          BurgerCard("Burger #6", 2),
          BurgerCard("Burger #7", 3),
          BurgerCard("Burger #8", 4),
        ],
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
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
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
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              height: 180,
              width: 180,

              //child: Image(
              //image: NetworkImage(
              //"https://github.com/MartiDavicino/Flutter-App_Mobile-Devices/blob/main/App%20prototype/app_prototype/assets/1.png"),
              //image: AssetImage("assets/" + img.toString() + "png"),
              //),
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

class Burger {
  final String name;
  final int img;
  final int kcal;
  Burger(
    this.name,
    this.kcal,
    this.img,
  );
}
