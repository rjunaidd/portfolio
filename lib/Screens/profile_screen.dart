import 'package:flutter/material.dart';
import 'package:portfolio/Data/app_data.dart';
import 'package:portfolio/Utils/app_strings.dart';
import 'package:portfolio/Utils/style_text.dart';


import '../Widgets/social_link.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const CircleAvatar(
              backgroundImage: AssetImage(AppString.ProfileAsset),
              radius: 80,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(AppData.modelData.name , style: StyleText.StyleSkranji,),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(

              children: [
                SizedBox(
                  width: size.width * 0.25,
                ),
               const ImagesLink(linkimages: AppString.Instalink, urllink: "https://www.instagram.com/r_junaid6/"),
                SizedBox(
                  width: size.width * 0.04,
                ),
                const ImagesLink(linkimages: AppString.githublink, urllink: "https://github.com/rjunaidd"),
                SizedBox(
                  width: size.width * 0.04,
                ),
                const ImagesLink(linkimages: AppString.linkedinlink, urllink: "https://www.linkedin.com/in/roaf-junaid-a8895a264/"),
                SizedBox(
                  width: size.width * 0.1,
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                elevation: 10,
                color: Colors.grey.shade100,
                child: Row(
                  children: [
                    Icon(Icons.person_2_outlined),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Fatherr Name"),
                        Text("Muhammad Yaqoob")
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
