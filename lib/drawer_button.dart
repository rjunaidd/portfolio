import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final String name;

  const DrawerButton({super.key ,required this.name});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 40,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Center(
          child: Text(name , style: const TextStyle(color: Colors.black , fontWeight: FontWeight.normal , fontSize: 18 ),
      ),
        ),
      );
  }
}
