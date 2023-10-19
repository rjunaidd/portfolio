

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const  CircleAvatar(
              radius: 80,
              // backgroundColor: Colors.teal,
              backgroundImage: AssetImage("assets/1.png"),
            ),
            const SizedBox(height: 40,),
            const Text("Design By" , style: TextStyle(color: Colors.white ,fontSize: 25 , fontWeight: FontWeight.bold),),
            const SizedBox(height: 30,),
            const Text("Roaf Junaid" , style: TextStyle(color: Colors.black ,fontSize: 25 , fontWeight: FontWeight.bold),),
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
