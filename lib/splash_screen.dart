

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:portfolio/Data/app_data.dart';
import 'package:portfolio/Utils/app_strings.dart';
import 'package:portfolio/Utils/style_text.dart';
import 'Screens/main_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>const DashboardScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const CircleAvatar(
              radius: 80,
              // backgroundColor: Colors.teal,
              backgroundImage: AssetImage(AppString.PortfolioIcon),
            ),
            const SizedBox(height: 40,),
            const Text("Design By" , style: TextStyle(color: Colors.white ,fontSize: 25 , fontWeight: FontWeight.bold , ),),
            const SizedBox(height: 30,),
             Text(AppData.modelData.name , style: StyleText.LexendStyle),
            const SizedBox(height: 80,),
            LoadingAnimationWidget.staggeredDotsWave(
              color: Colors.white,
              size: 50,
            ),
            const SizedBox(height: 20),
            const Text("Loading..." ,style: TextStyle(color: Colors.black , fontSize: 22 , fontWeight: FontWeight.normal), ),

          ],
        ),
      ),
    );
  }
}
