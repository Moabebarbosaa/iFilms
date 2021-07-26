import 'dart:convert';

import 'package:ifilms/models/serie/serie_model.dart';

class PopularSerieModel {
  final List<SerieModel> series;

  PopularSerieModel({
    this.series,
  });

  factory PopularSerieModel.fromJson(String str) =>
      PopularSerieModel.fromMap(json.decode(str));

  factory PopularSerieModel.fromMap(Map<String, dynamic> json) {
    return PopularSerieModel(
      series: List<SerieModel>.from(
          json["results"].map((x) => SerieModel.fromMap(x))),
    );
  }

  @override
  String toString() {
    return 'PopularTVModel{series: $series}';
  }
}
