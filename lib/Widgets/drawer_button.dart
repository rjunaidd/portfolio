import 'package:flutter/material.dart';
import 'package:portfolio/Utils/style_text.dart';

class ButtonDrawer extends StatelessWidget {
  final String title;
  const ButtonDrawer({super.key , required this.title});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 10,
      child: Container(
          color: Colors.grey,
          width: size.width * 0.5,
          height: size.height * 0.06,
          child: Center(
              child: Text(
                  title , style: StyleText.DrawerButton),
          ),
      ),
    );
  }
}
