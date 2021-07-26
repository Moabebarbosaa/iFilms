import 'dart:convert';

import 'package:ifilms/models/movie/movie_model.dart';

class PopularMoviesModel {
  final List<MovieModel> movies;

  PopularMoviesModel({
    this.movies,
  });

  factory PopularMoviesModel.fromJson(String str) =>
      PopularMoviesModel.fromMap(json.decode(str));

  factory PopularMoviesModel.fromMap(Map<String, dynamic> json) =>
      PopularMoviesModel(
        movies: List<MovieModel>.from(
            json["results"].map((x) => MovieModel.fromMap(x))),
      );

  @override
  String toString() {
    return 'PopularMoviesModel{movies: $movies}';
  }
}
