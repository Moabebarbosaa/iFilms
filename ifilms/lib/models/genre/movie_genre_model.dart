import 'package:ifilms/models/genre/genre_model.dart';

class MovieGenreModel {
  final List<GenreModel> moviesGenre;

  MovieGenreModel({this.moviesGenre});

  factory MovieGenreModel.fromMap(Map<String, dynamic> json) => MovieGenreModel(
        moviesGenre: List<GenreModel>.from(
            json["genres"].map((x) => GenreModel.fromMap(x))),
      );
}
