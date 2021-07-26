import 'dart:convert';

class ActorModel {
  final String name;
  final String profilePath;

  ActorModel({
    this.name,
    this.profilePath,
  });

  factory ActorModel.fromJson(String str) =>
      ActorModel.fromMap(json.decode(str));

  factory ActorModel.fromMap(Map<String, dynamic> json) => ActorModel(
        name: json["name"],
        profilePath: json['profile_path'],
      );

  @override
  String toString() {
    return 'CastModel{name: $name, profilePath: $profilePath}';
  }
}
