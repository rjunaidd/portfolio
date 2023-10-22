import 'package:flutter/material.dart';

import '../Data/app_data.dart';
import '../Utils/app_strings.dart';
import '../Utils/style_text.dart';

class DrawerHeading extends StatelessWidget {
  const DrawerHeading({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      width: size.width * 0.75,
      height: size.height * 0.30,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(AppString.ProfileAsset),
            radius: 60,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(AppData.modelData.fullName , style: StyleText.DrawerLexendStyle,),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(AppData.modelData.mail , style: StyleText.DrawerMailLexendStyle,),
        ],
      ),
    );
  }
}
