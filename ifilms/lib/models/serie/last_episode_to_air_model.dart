import 'dart:convert';

class LastEpisodeToAirModel {
  final String airDate;
  final int episodeNumber;
  final int id;
  final String name;
  final String overview;
  final String productionCode;
  final int seasonNumber;
  final String stillPath;
  final double voteAverage;
  final int voteCount;

  LastEpisodeToAirModel(
      {this.airDate,
      this.episodeNumber,
      this.id,
      this.name,
      this.overview,
      this.productionCode,
      this.seasonNumber,
      this.stillPath,
      this.voteAverage,
      this.voteCount});

  factory LastEpisodeToAirModel.fromJson(String str) =>
      LastEpisodeToAirModel.fromJson(json.decode(str));

  factory LastEpisodeToAirModel.fromMap(Map<String, dynamic> json) =>
      LastEpisodeToAirModel(
        airDate: json['air_date'],
        episodeNumber: json['episode_number'],
        id: json['id'],
        name: json['name'],
        overview: json['overview'],
        productionCode: json['production_code'],
        seasonNumber: json['season_number'],
        stillPath: json['still_path'] == null ? null : json['still_path'],
        voteAverage: json['vote_average'],
        voteCount: json['vote_count'],
      );
}
