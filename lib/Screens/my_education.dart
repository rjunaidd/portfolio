import 'package:flutter/material.dart';
import 'package:portfolio/Utils/app_strings.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Education"),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Image(image: AssetImage(AppString.EducationPic))
        ],
      ),
    );
  }
}
