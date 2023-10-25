import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Screens/my_education.dart';
import 'package:portfolio/Screens/profile_screen.dart';
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
    return  Scaffold(
    body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const ProfilePage())),
                child:const HomeScreenContainer(icon: Icons.person_2_rounded, title: "Profile"),
            ),
             InkWell(
                 onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const EducationScreen())),
                 child:const HomeScreenContainer(icon: FontAwesomeIcons.graduationCap, title: "Education"))
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeScreenContainer(icon: Icons.person_search, title: "Skills"),
            HomeScreenContainer(icon: Icons.work, title: "Work")
          ],
        ),
        const Row(
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
