import 'dart:convert';

import 'package:ifilms/models/movie/movie_model.dart';

class SimilarMovieModel {
  final List<MovieModel> movie;

  SimilarMovieModel({
    this.movie,
  });

  factory SimilarMovieModel.fromJson(String str) =>
      SimilarMovieModel.fromMap(json.decode(str));

  factory SimilarMovieModel.fromMap(Map<String, dynamic> json) =>
      SimilarMovieModel(
        movie: List<MovieModel>.from(
            json["results"].map((x) => MovieModel.fromMap(x))),
      );

  @override
  String toString() {
    return 'SimilarMovie{movies: $movie}';
  }
}
