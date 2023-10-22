import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Portfolio"),
        backgroundColor: Colors.grey,
      ),
      body: Stack(

        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                  image:AssetImage("assets/appdev.jpg"),
              // fit: BoxFit.fill
              ),
            ),
          ),
          Positioned(
            top: 0,
              left: 20,
              right: 0,
              child:Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.black,
            ),
          ],
              ),
          ),
        ],
      ),
    );
  }
}
