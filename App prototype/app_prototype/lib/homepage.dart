import 'package:app_prototype/catalogue.dart';
import 'package:app_prototype/aboutus.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  dynamic doc;
  HomePage(this.doc, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Burger Collection"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const Header("Burger Collection"),
            HomePageButton("About Us",
                MaterialPageRoute(builder: (context) => AboutUs(doc))),
            HomePageButton("Catalogue",
                MaterialPageRoute(builder: (context) => Catalogue(doc))),
          ],
        ),
      ),
    );
  }
}

class HomePageButton extends StatelessWidget {
  final String text;
  final MaterialPageRoute route;
  const HomePageButton(
    this.text,
    this.route, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 200,
      margin: EdgeInsets.fromLTRB(0, 60, 0, 60),
      child: RaisedButton(
        color: Colors.greenAccent,
        onPressed: () {
          Navigator.of(context).push(route);
        },
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String text;
  const Header(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 70, 0, 90),
      child: Text(
        text,
        style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
      ),
    );
  }
}
