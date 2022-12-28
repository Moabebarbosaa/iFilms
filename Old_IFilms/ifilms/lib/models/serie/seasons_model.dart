import 'dart:convert';

import 'package:ifilms/models/serie/episode_model.dart';

class SeasonsModel {
  final String airDate;
  final int episodeCount;
  final int id;
  final String name;
  final String overview;
  final String posterPath;
  final int seasonNumber;

  SeasonsModel({
    this.airDate,
    this.episodeCount,
    this.id,
    this.name,
    this.overview,
    this.posterPath,
    this.seasonNumber,
  });

  factory SeasonsModel.fromJson(String str) =>
      SeasonsModel.fromJson(json.decode(str));

  factory SeasonsModel.fromMap(Map<String, dynamic> seasons) => SeasonsModel(
        airDate: seasons['air_date'],
        episodeCount: seasons['episode_count'],
        id: seasons['id'],
        name: seasons['name'],
        overview: seasons['overview'],
        posterPath: seasons['poster_path'],
        seasonNumber: seasons['season_number'],
      );

  @override
  String toString() {
    return 'SeasonsModel{airDate: $airDate, episodeCount: $episodeCount, id: $id, name: $name, overview: $overview, posterPath: $posterPath, seasonNumber: $seasonNumber}';
  }
}
