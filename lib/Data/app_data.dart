import '../Models/model_data.dart';

class AppData{
  AppData._();

  static ModelData modelData = ModelData(
    fullName: "Roaf Junaid",
      fatherName: "Muhammad Yaqoob",
      name: "r_junaid6",
      mail: "roafjunaid09@gmail.com",
      hobbies:<String> [
        "Travelling",
        "Learning about Devlopment",
        "Lonely Time Spend"
        "Gardening"
      ] ,
      number: "+9230533320355",
      bio: devBio ,
      skillAndProgress: <SkillAndProgress> [
        SkillAndProgress(
            name:"Dart Basic Programming " ,
            progress:0.7 ),
        SkillAndProgress(
            name:"OOP Concept " ,
            progress: 0.8),
        SkillAndProgress(
            name: "Widgets" ,
            progress: 0.7),
        SkillAndProgress(
            name: "MVC & MVVM" ,
            progress: 0.7),
        SkillAndProgress(
            name: "Git" ,
            progress: 0.9),
        SkillAndProgress(
            name: "Rest API's Integration" ,
            progress: 0.65),
        SkillAndProgress(
            name: "Firebase" ,
            progress: 0.5),
      ]
  );

  static const String devBio = "Hello, I'm [Roaf Junaid] I'm a passionate Flutter developer with a knack for creating beautiful and functional mobile applications. My journey in the world of mobile app development began when I discovered the power of Flutter, and I've been hooked ever since. ";

}