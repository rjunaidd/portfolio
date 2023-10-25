import 'package:flutter/material.dart';

class EducationCard extends StatelessWidget {
  final Color? concolor;
  final String Qualification;
  final String Year;
  final String Board;
  final String Marks;
  const EducationCard({
    super.key,
  this.concolor,
  required this.Qualification,
    required this.Year,
    required this.Board,
    required this.Marks
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return   Container(
      height: 80,
      width: 500,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1
        ),
        color: concolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.1,
          ),
          Text(Qualification),
          SizedBox(
            width: size.width * 0.3,
          ),
          Text(Year),
          SizedBox(
            width: size.width * 0.12,
          ),
          Text(Board),
          SizedBox(
            width: size.width * 0.1,
          ),
          Text(Marks),


        ],
      ),
    );
  }
}
