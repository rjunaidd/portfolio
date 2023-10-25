import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Data/app_data.dart';
import 'package:portfolio/Utils/app_strings.dart';
import 'package:portfolio/Utils/style_text.dart';
import 'package:portfolio/Widgets/profile_list.dart';
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.2,
              ),
             const CircleAvatar(
                backgroundImage: AssetImage(AppString.ProfileAsset),
                radius: 80,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(AppData.modelData.name , style: StyleText.StyleSkranji,),
              SizedBox(
                height: size.height * 0.02,
              ),
             const Text("Flutter Developer" ,
               style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.normal
              ),),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const ImagesLink(icon: FontAwesomeIcons.instagram, urllink: "https://www.instagram.com/r_junaid6/"),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  const  ImagesLink(icon:FontAwesomeIcons.github , urllink: "https://github.com/rjunaidd"),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  const ImagesLink(icon: FontAwesomeIcons.linkedin, urllink:  "https://www.linkedin.com/in/roaf-junaid-a8895a264/"),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const ProfileList(titleref: "Muhammad Yaqoob", title: "Father Name", icon: Icons.people_alt_outlined),
              const ProfileList(titleref: "roafjunaaid09@gmail.com", title: "Email", icon: Icons.mail_outline),
              const ProfileList(title: "Phone", icon: Icons.phone, titleref: "+9230533320355"),
              const ProfileList(title: "CNIC", icon: Icons.sd_card_alert_outlined, titleref: "35103-2135866-5"),
              const ProfileList(title: "Address", icon: Icons.location_on_outlined, titleref: "Pattoki, Pakistan")
            ],
          ),
        ),
      ),
    );
  }
}
