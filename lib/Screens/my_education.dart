import 'package:flutter/material.dart';
import 'package:portfolio/Models/education_detail.dart';
import 'package:portfolio/Utils/app_strings.dart';
import 'package:portfolio/Utils/style_text.dart';


class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title:const Text("My Education"),
        backgroundColor: Colors.grey.shade700,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.05 ,
              ),
              const Image(image: AssetImage(AppString.EducationPic)),
              SizedBox(
                height: size.height * 0.05,
              ),
              Text("Education" , style: StyleText.Styleeducation,),
             SizedBox(
               height: size.height * 0.03,
             ),
             Center(
               child: buildEducationTable(),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
