
class ModelData{
  final String fullName;
  final String name;
  final String fatherName;
  final String number;
  final String mail;
  final String bio;
  final List<String> hobbies;
  final List<SkillAndProgress> skillAndProgress;

  ModelData(
      {
        required this.fatherName,
        required this.fullName,
        required this.name,
        required this.mail,
        required this.hobbies,
        required this.number,
        required this.bio,
        required this.skillAndProgress
      }
      );
}

class SkillAndProgress{
  final String name;
  final double progress;

  SkillAndProgress(
      {
        required this.name,
        required this.progress,
      }
      );
}