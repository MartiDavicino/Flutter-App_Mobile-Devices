import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  dynamic doc;
  AboutUs(this.doc, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              doc["AboutUs"],
              style: const TextStyle(fontSize: 25),
            ),
          ),
          Row(
            children: [
              ArrowButton(Icons.arrow_left),
              ProfileImage(),
              ArrowButton(Icons.arrow_right)
            ],
          ),
          Description(),
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withAlpha(80),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Text(
          "This is the description of...",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
        width: 400,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.grey.withAlpha(80),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(25),
          width: 400,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(80),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}

class ArrowButton extends StatelessWidget {
  final icon;
  const ArrowButton(
    this.icon, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      child: Icon(
        icon,
        color: Colors.grey,
        size: 50,
      ),
    );
  }
}
