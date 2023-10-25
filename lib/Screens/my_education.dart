import 'package:flutter/material.dart';
import 'package:portfolio/Utils/app_strings.dart';
import 'package:portfolio/Utils/style_text.dart';
import 'package:portfolio/Widgets/EducationCard/custom_education.dart';

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
        backgroundColor: Colors.grey,
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
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 20),
                   child: Text("Education" , style: StyleText.Styleeducation,),
                 ),
                 SizedBox(
                   height: size.height * 0.01,
                 ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding:const  EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 20,
                      child:   Column(
                        children: [
                          EducationCard(
                              concolor: Colors.grey.shade500,
                              Qualification: "Qualification",
                              Year: "Year",
                              Board: "Board",
                              Marks: "Marks"
                          ),
                          const  EducationCard(
                              Qualification:"Matric (Bio)" ,
                              Year: "2017",
                              Board: "Bise Lahore",
                              Marks: "846"),
                          const EducationCard(
                              Qualification:"Matric (Bio)" ,
                              Year: "2017",
                              Board: "Bise Lahore",
                              Marks: "846"),
                          const  EducationCard(
                              Qualification:"Matric (Bio)" ,
                              Year: "2017",
                              Board: "Bise Lahore",
                              Marks: "846"),
                        ],
                      ),
                    ),
                  ),
                ),
               ],
             ),
            ],
          ),
        ),
      ),
    );
  }
}
