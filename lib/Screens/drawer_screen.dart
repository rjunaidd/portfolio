import 'package:flutter/material.dart';
import 'package:portfolio/Screens/profile_screen.dart';
import 'package:portfolio/Utils/style_text.dart';
import 'package:portfolio/Widgets/drawer_button.dart';
import 'package:portfolio/Widgets/drawer_heading.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  SafeArea(
        child: Container(
          color: Colors.white,
          height: double.infinity,
          width: size.width * 0.75,
          child: Column(
            children:[
             const DrawerHeading(),
              Column(
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                 InkWell(
                   onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const ProfilePage()));
                   },
                   child:const  ButtonDrawer(
                        title:"Check Profile"
                    ),
                 ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                 const ButtonDrawer(
                      title: "My Education"
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                 const ButtonDrawer(
                      title: "View My Skills"
                  ),
                  SizedBox(
                    height: size.height * 0.33,
                  ),
                  Text("All Right Reserved" , style: StyleText.alltext,),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
