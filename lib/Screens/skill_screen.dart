import 'package:flutter/material.dart';
import 'package:portfolio/Data/app_data.dart';
import 'package:portfolio/Utils/app_strings.dart';
import 'package:portfolio/Widgets/progress_bar.dart';

class SkillScreen extends StatelessWidget {
  const SkillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        title:const Text("My Skills"),
        backgroundColor: Colors.grey.shade700,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: size.height  * 0.05,
              ),
              const Image(image: AssetImage(AppString.SkillPic)),
              SizedBox(
                height: size.height * 0.09,
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.grey.shade300,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: List.generate(AppData.modelData.skillAndProgress.length,
                          (index) => ProgressBar(
                          progresstitle: AppData.modelData.skillAndProgress[index].name,
                          progresss: AppData.modelData.skillAndProgress[index].progress
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
