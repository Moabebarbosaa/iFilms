import 'dart:convert';

import 'package:ifilms/models/movie/movie_model.dart';
import 'package:ifilms/models/serie/serie_model.dart';

class SimilarSerieModel {
  final List<SerieModel> series;

  SimilarSerieModel({
    this.series,
  });

  factory SimilarSerieModel.fromJson(String str) =>
      SimilarSerieModel.fromMap(json.decode(str));

  factory SimilarSerieModel.fromMap(Map<String, dynamic> json) =>
      SimilarSerieModel(
        series: List<SerieModel>.from(
            json["results"].map((x) => SerieModel.fromMap(x))),
      );

  @override
  String toString() {
    return 'SimilarMovie{movies: $series}';
  }
}
