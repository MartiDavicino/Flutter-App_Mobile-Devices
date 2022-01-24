import 'package:app_prototype/aboutus.dart';
import 'package:flutter/material.dart';

class NewAboutUs extends StatelessWidget {
  const NewAboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About us"),
      ),
      body: Column(
        children: [
          ProfileMiniature(
            Colors.red,
            "Aitor",
            "The engineer",
            "Des",
            'assets/aitor.jpeg',
          ),
          ProfileMiniature(
            Colors.blue,
            "Telmo",
            "The latifundist",
            "Des",
            'assets/telmo.jpeg',
          ),
          ProfileMiniature(
            Colors.green,
            "Marti",
            "The UI master",
            "Des",
            'assets/marti.jpeg',
          ),
        ],
      ),
    );
  }
}

class ProfileMiniature extends StatelessWidget {
  final Color color;
  final String name;
  final String alias;
  final String description;
  final profileImage;
  const ProfileMiniature(
    this.color,
    this.name,
    this.alias,
    this.description,
    this.profileImage, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      margin: EdgeInsets.all(100),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: InkWell(
        onTap: () {
          print("tapped profile");
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DeveloperCard(
                color,
                name,
                alias,
                description,
                profileImage,
              ),
            ),
          );
        },
      ),
    );
  }
}

class DeveloperCard extends StatelessWidget {
  final Color color;
  final String name;
  final String alias;
  final String description;
  final profileImage;
  const DeveloperCard(
    this.color,
    this.name,
    this.alias,
    this.description,
    this.profileImage, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(alias),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 200,
              color: Colors.grey,
            ),
            Container(
              height: 400,
              width: 400,
              child: Image(
                image: AssetImage(profileImage),
              ),
            ),
            Container(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
