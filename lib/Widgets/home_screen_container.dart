import 'package:flutter/material.dart';
import 'package:portfolio/Utils/style_text.dart';

class HomeScreenContainer extends StatelessWidget {
  final IconData icon;
  final String title;
  const HomeScreenContainer({
    super.key,
  required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Padding(
      padding:const EdgeInsets.symmetric(vertical: 40 , horizontal: 20),
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        child: Container(
            width: 120,
            height: 120,
            color: Colors.grey.shade50,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Icon(icon , size: 60,  color: Colors.grey.shade700,),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(title , style: StyleText.StyleHomeContainer
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
