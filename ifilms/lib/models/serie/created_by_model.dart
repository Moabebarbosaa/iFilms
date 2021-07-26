import 'dart:convert';

class CreatedByModel {
  final int id;
  final String creditId;
  final String name;
  final int gender;
  final String profilePath;

  CreatedByModel(
      {this.id, this.creditId, this.name, this.gender, this.profilePath});

  factory CreatedByModel.fromJson(String str) =>
      CreatedByModel.fromJson(json.decode(str));

  factory CreatedByModel.fromMap(Map<String, dynamic> json) => CreatedByModel(
      id: json['id'],
      creditId: json['credit_id'],
      name: json['name'],
      gender: json['gender'],
      profilePath: json['profile_path'] == null ? null : json['profile_path']);
}
