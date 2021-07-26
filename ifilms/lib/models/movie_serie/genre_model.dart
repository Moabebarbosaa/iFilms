import 'dart:convert';

class GenreModel {
  final int id;
  final String name;

  GenreModel({
    this.id,
    this.name,
  });

  factory GenreModel.fromJson(String str) =>
      GenreModel.fromMap(json.decode(str));

  factory GenreModel.fromMap(Map<String, dynamic> json) => GenreModel(
        id: json["id"],
        name: json["name"],
      );

  @override
  String toString() {
    return '$name';
  }
}
