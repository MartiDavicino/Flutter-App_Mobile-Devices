import 'dart:math';
import 'package:app_prototype/catalogue.dart';
import 'package:flutter/material.dart';

class BurgerDetails extends StatelessWidget {
  final Burger burger;

  const BurgerDetails(this.burger, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.grey.withAlpha(80),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 50, 30, 10),
                  decoration: BoxDecoration(
                    color: configurations.mainColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  height: 520,
                  width: 500,
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  child: Text(burger.name,
                      style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text("Burger description",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text("More Burger description",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                      )),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.fromLTRB(40, 110, 40, 10),
            decoration: BoxDecoration(
              color: configurations.mainColor,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                BarButton(Icons.arrow_left, PreviousBurger),
                BarButton(Icons.shuffle, RandomBurger),
                BarButton(Icons.arrow_right, NextBurger),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BarButton extends StatelessWidget {
  final icon;
  final method;
  const BarButton(
    this.icon,
    this.method, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          method();
        },
        hoverColor: Colors.red,
        child: Icon(
          this.icon,
          color: Colors.black,
          size: 45,
        ),
      ),
    );
  }
}

void NextBurger() {
  print("Next burger");
  //Navigator.of(context).push(
  //  MaterialPageRoute(
  //    builder: (context) => BurgerDetails(burgerList[3]),
  //  ),
  //);
}

void PreviousBurger() {
  print("Previous burger");
}

void RandomBurger() {
  print("Random burger");
  Random random = new Random();
  int randomNumber = random.nextInt(burgerList.length);
}
