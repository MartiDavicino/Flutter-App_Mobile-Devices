import 'package:flutter/material.dart';

class NewAboutUs extends StatelessWidget {
  const NewAboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          DeveloperCard(Colors.cyan, "Aitor", "Des"),
          DeveloperCard(Colors.green, "Marti", "Vain"),
          DeveloperCard(Colors.orange, "Telmo", "Rus"),
        ],
      ),
    );
  }
}

class DeveloperCard extends StatelessWidget {
  final Color color;
  final String name;
  final String description;
  const DeveloperCard(
    this.color,
    this.name,
    this.description, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 200,
            color: Colors.grey,
          ),
          Container(
            child: Text(name),
          ),
          Container(
            child: Text(description),
          ),
        ],
      ),
    );
  }
}
