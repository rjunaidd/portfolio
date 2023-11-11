

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:portfolio/Data/app_data.dart';
import 'package:portfolio/Utils/app_strings.dart';
import 'package:portfolio/Utils/style_text.dart';
import 'main_screen.dart';


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
    Size size   = MediaQuery.of(context).size;
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
             SizedBox(height: size.height * 0.08,),
             Text("Design By" , style: StyleText.StyleSkranji),
             SizedBox(height: size.height * 0.08,),
             Text(AppData.modelData.name , style: StyleText.LexendStyle),
             SizedBox(height: size.height * 0.1,),
            LoadingAnimationWidget.staggeredDotsWave(
              color: Colors.white,
              size: 50,
            ),
             SizedBox(height: size.height * 0.01),

            const Text("Loading..." ,style: TextStyle(color: Colors.black , fontSize: 22 , fontWeight: FontWeight.normal), ),

          ],
        ),
      ),
    );
  }
}
