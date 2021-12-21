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
            margin: EdgeInsets.all(40),
            decoration: const BoxDecoration(
              color: Colors.grey,
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
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  height: 480,
                  width: 500,
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  child: Text(name,
                      style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  child: const Text("Mmmm deliciosa",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  child: const Text("Un monton de kalorias",
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
            margin: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            decoration: const BoxDecoration(
              color: Colors.green,
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
}

void PreviousBurger() {
  print("Previous burger");
}

void RandomBurger() {
  print("Random burger");
}
