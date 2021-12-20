import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Burger Collection",
      home: Catalogue(),
      debugShowCheckedModeBanner: false,
    ));

class Catalogue extends StatefulWidget {
  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burger Collection"),
        backgroundColor: Colors.orange,
      ),
      body: GridView.count(crossAxisCount: 2, children: [
        BurgerCard("Burger #1"),
        BurgerCard("Burger #2"),
        BurgerCard("Burger #3"),
        BurgerCard("Burger #4"),
        BurgerCard("Burger #5"),
        BurgerCard("Burger #6"),
        BurgerCard("Burger #7"),
        BurgerCard("Burger #8"),
      ]),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: Icon(Icons.refresh),
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
    return Card(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(50),
            height: 150,
            width: 150,
            color: Colors.green,
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            height: 100,
            width: 350,
            child: Text(
              name,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
