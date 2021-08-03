import 'dart:convert';

import 'package:ifilms/models/movie_serie/genre_model.dart';
import 'package:ifilms/models/serie/last_episode_to_air_model.dart';
import 'package:ifilms/models/serie/seasons_model.dart';

import 'created_by_model.dart';

class SerieModel {
  final String backdropPath;
  final List<CreatedByModel> createdBy;
  final List<dynamic> episodeRunTime;
  final DateTime releaseDate;
  final List<GenreModel> genres; //
  final String homepage;
  final int id;
  final bool inProduction;
  final List<dynamic> languages;
  final String lastAirDate;
  final LastEpisodeToAirModel lastEpisodeToAir;
  final String title;
  final int numberOfEpisodes;
  final int numberOfSeasons;
  final List<dynamic> originCountry;
  final String originalLanguage;
  final String originalName;
  final String overview;
  final double popularity;
  final String posterPath;
  final List<SeasonsModel> seasons;
  final String status;
  final String tagline;
  final String type;
  final dynamic voteAverage;
  final int voteCount;

  SerieModel(
      {this.backdropPath,
      this.createdBy,
      this.episodeRunTime,
      this.releaseDate, //firstAirDate
      this.genres,
      this.homepage,
      this.id,
      this.inProduction,
      this.languages,
      this.lastAirDate,
      this.lastEpisodeToAir,
      this.title,
      this.numberOfEpisodes,
      this.numberOfSeasons,
      this.originCountry,
      this.originalLanguage,
      this.originalName,
      this.overview,
      this.popularity,
      this.posterPath,
      this.seasons,
      this.status,
      this.tagline,
      this.type,
      this.voteAverage,
      this.voteCount});

  factory SerieModel.fromJson(String str) =>
      SerieModel.fromJson(json.decode(str));

  factory SerieModel.fromMap(Map<String, dynamic> json) {
    return SerieModel(
      backdropPath:
          json['backdrop_path'] == null ? null : json['backdrop_path'],
      createdBy: json["created_by"] == null
          ? null
          : List<CreatedByModel>.from(
              json["created_by"].map((x) => CreatedByModel.fromMap(x))),
      episodeRunTime: json['episode_run_time'],
      releaseDate: json['first_air_date'] == ''
          ? null
          : DateTime.parse(json['first_air_date']),
      genres: json["genres"] == null
          ? null
          : List<GenreModel>.from(
              json["genres"].map((x) => GenreModel.fromMap(x))),
      homepage: json['homepage'],
      id: json['id'],
      inProduction: json['in_production'],
      languages: json['languages'],
      lastAirDate: json['last_air_date'],
      lastEpisodeToAir: json['last_episode_to_air'] == null
          ? null
          : LastEpisodeToAirModel.fromMap(json['last_episode_to_air']),
      title: json['name'],
      numberOfEpisodes: json['number_of_episodes'],
      numberOfSeasons: json['number_of_seasons'],
      originCountry: json['origin_country'],
      originalLanguage: json['original_language'],
      originalName: json['original_name'],
      overview: json['overview'],
      popularity: json['popularity'],
      posterPath: json['poster_path'] == null ? null : json['poster_path'],
      seasons: json['seasons'] == null
          ? null
          : List<SeasonsModel>.from(
              json['seasons'].map((x) => SeasonsModel.fromMap(x))),
      status: json['status'],
      tagline: json['tagline'],
      type: json['type'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
    );
  }
}
