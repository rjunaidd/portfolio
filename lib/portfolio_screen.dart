import 'package:flutter/material.dart';

import 'drawer_button.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Dashboard",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      drawer: Container(
        color: Colors.teal,
        height: double.infinity,
        width: MediaQuery.of(context).size.width * 0.75,
        child: SafeArea(
          child: Column(
            children:const [
               SizedBox(
                height: 30,
              ),
               CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/r j.jpg"),
              ),
               SizedBox(
                height: 20,
              ),
               Text(
                "Roaf Junaid",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
               SizedBox(
                height: 10,
              ),
               Text(
                "roafjunaid09@gmail.com",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
               SizedBox(height: 10,),
               Divider(
                height: 20,
                thickness: 2,
                color: Colors.green,
              ),
               SizedBox(height: 20,),
               DrawerButton(
                name: "Check Profile",
              ),
               SizedBox(height: 20,),
               DrawerButton(name: "My Education"),
               SizedBox(height: 20,),
               DrawerButton(name: "View My Skills"),
            ],
          ),
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: current,
        backgroundColor: Colors.teal,
        selectedItemColor: Colors.white,
        onTap: (i) => bottomClick(i),
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home) , label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.work) , label: "Work"),
          BottomNavigationBarItem(icon: Icon(Icons.person ,) , label: "Profile"),
        ],
      ) ,
    );
  }
  List<String> values = [
    "Home" , "Work" , "Profile"
  ];
  void bottomClick(int val){
    setState(() {
      current = val;
    });

  }
}
