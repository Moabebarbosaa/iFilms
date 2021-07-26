class GenreModel {
  final int id;
  final String name;

  GenreModel({this.id, this.name});

  factory GenreModel.fromMap(Map<String, dynamic> json) {
    return GenreModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
