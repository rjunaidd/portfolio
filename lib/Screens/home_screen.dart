import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/home_screen_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return const Scaffold(
    body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeScreenContainer(icon: Icons.person_2_rounded, title: "Profile"),
            HomeScreenContainer(icon: FontAwesomeIcons.graduationCap, title: "Education")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeScreenContainer(icon: Icons.person_search, title: "Skills"),
            HomeScreenContainer(icon: Icons.work, title: "Work")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeScreenContainer(icon: Icons.favorite_rounded, title: "Hobbies"),
            HomeScreenContainer(icon: Icons.interests_rounded, title: "Interest")
          ],
        ),
      ],
    ),
    );
  }
}
