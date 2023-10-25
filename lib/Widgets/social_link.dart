

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImagesLink extends StatelessWidget {

  final IconData icon;
  final String urllink;
  const ImagesLink({
    super.key,
    required this.icon,
    required this.urllink
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
      _launchURL(urllink);
    },
    child: Icon(icon , size: 40,),
    );
  }
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https" , host: url);
    if(!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication
    )
    ){
      throw "Can not launch url";
    }
  }
}
