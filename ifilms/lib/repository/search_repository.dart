// https://api.themoviedb.org/3/discover/movie?api_key=10deef635b1e99b6adfff230ae979d0b&language=pt-BR&with_genres=10770&watch_region=BR

import 'package:dio/dio.dart';
import 'package:ifilms/core/api_.dart';
import 'package:ifilms/models/genre/movie_genre_model.dart';
import 'package:ifilms/models/genre/serie_genre_model.dart';
import 'package:ifilms/models/list/list_detail_model.dart';
import 'package:ifilms/models/movie/popular_movies_model.dart';
import 'package:ifilms/models/serie/popular_serie_model.dart';

class SearchRepository {
  final Dio _dio = Dio(kDioOptionsTMDB);

  Future<SerieGenreModel> fetchGenreSeries() async {
    try {
      final response = await _dio.get('/genre/tv/list?&language=pt-BR');
      final model = SerieGenreModel.fromMap(response.data);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }

  Future<MovieGenreModel> fetchGenreMovies() async {
    try {
      final response = await _dio.get('/genre/movie/list?&language=pt-BR');
      final model = MovieGenreModel.fromMap(response.data);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }

  Future<ListDetailModel> fetchMoviesByGenre(int genre) async {
    try {
      final response =
          await _dio.get('/discover/movie?&language=pt-BR&with_genres=$genre');
      final model = ListDetailModel.fromMap(response.data);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }

  Future<ListDetailModel> fetchSeriesByGenre(int genre) async {
    try {
      final response =
          await _dio.get('/discover/tv?&language=pt-BR&with_genres=$genre');
      final model = ListDetailModel.fromMap(response.data);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }

  Future<ListDetailModel> fetchByQuery(String query) async {
    try {
      final response = await _dio.get(
          '/search/multi?&language=pt-BR&query=$query&page=1&include_adult=false&region=BR');
      final model = ListDetailModel.fromMap(response.data);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }
}
