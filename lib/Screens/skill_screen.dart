import 'package:flutter/material.dart';
import 'package:portfolio/Utils/app_strings.dart';

class SkillScreen extends StatelessWidget {
  const SkillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("My Skills"),
        backgroundColor: Colors.grey.shade700,
      ),
      body:const Center(
        child: Column(
          children: [
            Image(image: AssetImage(AppString.SkillPic))
          ],
        ),
      ),
    );
  }
}
