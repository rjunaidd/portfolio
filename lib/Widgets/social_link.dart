

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImagesLink extends StatelessWidget {

  final String linkimages;
  final String urllink;
  const ImagesLink({
    super.key,
    required this.linkimages,
    required this.urllink
  });


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        _launchURL(urllink);
      },
      child: Image.asset(linkimages ,width: 50 , height: 50,),
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
