import 'dart:convert';

import 'package:ifilms/models/movie_serie/genre_model.dart';
import 'package:ifilms/models/movie_serie/production_company_model.dart';
import 'package:ifilms/models/movie_serie/production_country_model.dart';
import 'package:ifilms/models/serie/last_episode_to_air_model.dart';
import 'package:ifilms/models/serie/networks_model.dart';
import 'package:ifilms/models/serie/seasons_model.dart';
import 'package:ifilms/models/serie/serie_spoken_languages_model.dart';

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
  final LastEpisodeToAirModel lastEpisodeToAir; //
  final String title;
  final List<NetworksModel> networks; //
  final int numberOfEpisodes;
  final int numberOfSeasons;
  final List<dynamic> originCountry;
  final String originalLanguage;
  final String originalName;
  final String overview;
  final double popularity;
  final String posterPath;
  final List<ProductionCompanyModel> productionCompanies; //
  final List<ProductionCountryModel> productionCountries; //
  final List<SeasonsModel> seasons; //
  final List<SerieSpokenLanguagesModel> spokenLanguages; //
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
      this.networks,
      this.numberOfEpisodes,
      this.numberOfSeasons,
      this.originCountry,
      this.originalLanguage,
      this.originalName,
      this.overview,
      this.popularity,
      this.posterPath,
      this.productionCompanies,
      this.productionCountries,
      this.seasons,
      this.spokenLanguages,
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
      networks: json['networks'] == null
          ? null
          : List<NetworksModel>.from(
              json['networks'].map((x) => NetworksModel.fromMap(x))),
      numberOfEpisodes: json['number_of_episodes'],
      numberOfSeasons: json['number_of_seasons'],
      originCountry: json['origin_country'],
      originalLanguage: json['original_language'],
      originalName: json['original_name'],
      overview: json['overview'],
      popularity: json['popularity'],
      posterPath: json['poster_path'] == null ? null : json['poster_path'],
      productionCompanies: json['production_companies'] == null
          ? null
          : List<ProductionCompanyModel>.from(json['production_companies']
              .map((x) => ProductionCompanyModel.fromMap(x))),
      productionCountries: json['production_countries'] == null
          ? null
          : List<ProductionCountryModel>.from(json['production_countries']
              .map((x) => ProductionCountryModel.fromMap(x))),
      seasons: json['seasons'] == null
          ? null
          : List<SeasonsModel>.from(
              json['seasons'].map((x) => SeasonsModel.fromMap(x))),
      spokenLanguages: json['spoken_languages'] == null
          ? null
          : List<SerieSpokenLanguagesModel>.from(json['spoken_languages']
              .map((x) => SerieSpokenLanguagesModel.fromMap(x))),
      status: json['status'],
      tagline: json['tagline'],
      type: json['type'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
    );
  }

  @override
  String toString() {
    return 'SerieDetailModel{backdropPath: $backdropPath, createdBy: $createdBy, episodeRunTime: $episodeRunTime, firstAirDate: $releaseDate, genres: $genres, homepage: $homepage, id: $id, inProduction: $inProduction, languages: $languages, lastAirDate: $lastAirDate, lastEpisodeToAir: $lastEpisodeToAir, name: $title, networks: $networks, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, originCountry: $originCountry, originalLanguage: $originalLanguage, originalName: $originalName, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, seasons: $seasons, spokenLanguages: $spokenLanguages, status: $status, tagline: $tagline, type: $type, voteAverage: $voteAverage, voteCount: $voteCount}';
  }
}
