import 'package:flutter/material.dart';

class BurgerDetails extends StatelessWidget {
  final String name;
  const BurgerDetails(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(50),
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
              margin: const EdgeInsets.all(50),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              height: 500,
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
              child: Text("Mmmm deliciosa",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  )),
            ),
            Container(
              margin: const EdgeInsets.all(0),
              child: Text("Un monton de kalorias",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
