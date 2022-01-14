import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

// Link to DB
final List data = [
  {
    'color': Colors.red,
    'name': "Marti Davicino",
  },
  {
    'color': Colors.green,
    'name': "Aitor Álvarez",
  },
  {
    'color': Colors.blue,
    'name': "Telmo Nauta",
  }
];

class AboutUs extends StatefulWidget {
  dynamic doc;
  AboutUs(this.doc, {Key? key}) : super(key: key);
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  // Dynamically load cards from database
  List<Card> cards = [
    Card(data[0]['color'], data[0]['name']),
    Card(data[1]['color'], data[1]['name']),
    Card(data[2]['color'], data[2]['name']),
  ];

  @override
  Widget build(BuildContext context) {
    // Stack of cards that can be swiped. Set width, height, etc here.
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.7,
      // Important to keep as a stack to have overlay of cards.
      child: Stack(
        children: cards,
      ),
    );
  }
}

class Card extends StatelessWidget {
  // Made to distinguish cards
  // Add your own applicable data here
  final Color color;
  final String name;
  Card(this.color, this.name);

  @override
  Widget build(BuildContext context) {
    return Swipable(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: color,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              height: 100,
              color: Colors.grey,
            ),
            Container(
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      // onSwipeRight, left, up, down, cancel, etc...
    );
  }
}
