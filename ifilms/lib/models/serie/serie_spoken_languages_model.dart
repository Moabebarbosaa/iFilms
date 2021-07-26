import 'dart:convert';

class SerieSpokenLanguagesModel {
  String englishName;
  String iso6391;
  String name;

  SerieSpokenLanguagesModel({this.englishName, this.iso6391, this.name});

  factory SerieSpokenLanguagesModel.fromJson(String str) =>
      SerieSpokenLanguagesModel.fromMap(json.decode(str));

  factory SerieSpokenLanguagesModel.fromMap(Map<String, dynamic> json) =>
      SerieSpokenLanguagesModel(
        englishName: json['english_name'],
        iso6391: json["iso_639_1"],
        name: json["name"],
      );
}
