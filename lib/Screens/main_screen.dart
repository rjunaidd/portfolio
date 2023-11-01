import 'package:flutter/material.dart';
import 'package:portfolio/Screens/home_screen.dart';
import 'package:portfolio/Screens/profile_screen.dart';
import 'package:portfolio/Screens/work_screen.dart';

import 'drawer_screen.dart';
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int _currenyIndex = 1;
  final List _page = [
   const ProfilePage(),
    const HomePage(),
    const WorkPage(),
  ];

  void gotoPage(int index){
    setState(() {
      _currenyIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("My Portfolio"),
        backgroundColor: Colors.grey.shade700,
      ),
      drawer: DrawerScreen(),
      body: _page[_currenyIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.brown.shade900,
        selectedFontSize: 16,
        showUnselectedLabels: false,
        unselectedItemColor:  Colors.blue.shade900,
        onTap: gotoPage,
        items:const [
          BottomNavigationBarItem(
              icon:Icon(Icons.person),
              label: "Profile"),
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon:Icon(Icons.work),
              label: "Work"),
        ],
      ),

    );
  }
}
