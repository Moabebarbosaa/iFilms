import 'dart:convert';

class MovieSpokenLanguageModel {
  final String iso6391;
  final String name;

  MovieSpokenLanguageModel({
    this.iso6391,
    this.name,
  });

  factory MovieSpokenLanguageModel.fromJson(String str) =>
      MovieSpokenLanguageModel.fromMap(json.decode(str));

  factory MovieSpokenLanguageModel.fromMap(Map<String, dynamic> json) =>
      MovieSpokenLanguageModel(
        iso6391: json["iso_639_1"],
        name: json["name"],
      );
}
