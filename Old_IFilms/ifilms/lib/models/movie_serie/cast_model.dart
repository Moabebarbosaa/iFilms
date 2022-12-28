import 'dart:convert';

import 'package:ifilms/models/movie_serie/actor_model.dart';

class CastModel {
  final List<ActorModel> cast;

  CastModel({
    this.cast,
  });

  factory CastModel.fromJson(String str) => CastModel.fromMap(json.decode(str));

  factory CastModel.fromMap(Map<String, dynamic> json) {
    return CastModel(
      cast: List<ActorModel>.from(json["cast"].map((x) {
        return ActorModel.fromMap(x);
      })),
    );
  }

  @override
  String toString() {
    return 'PopularMoviesModel{movies: $cast}';
  }
}
