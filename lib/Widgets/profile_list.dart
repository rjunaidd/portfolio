import 'package:flutter/material.dart';
import 'package:portfolio/Utils/style_text.dart';

class ProfileList extends StatelessWidget {
  final String title;
  final String titleref;
  final IconData icon;
  const ProfileList({
    super.key,
  required this.title,
  required this.icon,
    required this.titleref,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        elevation: 10,
        color: Colors.grey.shade100,
        child: Row(
          children: [
            SizedBox(
              width: size.width * 0.04,
            ),
             Icon(icon , size: 30,),
            SizedBox(
              width: size.width * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(title , style: StyleText.StyleCard,),
                  SizedBox(
                    height: size.height * 0.009,
                  ),
                   Text(titleref , style: StyleText.StyleCardRef,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
