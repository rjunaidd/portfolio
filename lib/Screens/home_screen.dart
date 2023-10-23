import 'package:flutter/material.dart';
import 'package:portfolio/Data/app_data.dart';
import 'package:portfolio/Utils/app_strings.dart';

import 'drawer_screen.dart';

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
    body: SizedBox(
      child: Stack(
        children: [
         const Padding(
            padding: EdgeInsets.zero,
            child: Image(image: AssetImage(AppString.StackImages)),
          ),
          Card(
            elevation: 100,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade500
              ),
              height: size.height * 0.20,
              width: size.width * 0.4,
            ),
          ),
        ],
      ),
    ),
    );
  }
}
