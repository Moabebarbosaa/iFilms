import 'package:dio/dio.dart';
import 'package:ifilms/core/api_.dart';
import 'package:ifilms/models/movie/movie_model.dart';
import 'package:ifilms/models/movie/popular_movies_model.dart';
import 'package:ifilms/models/movie_serie/youtube_model.dart';
import 'package:ifilms/models/movie_serie/cast_model.dart';
import 'package:ifilms/models/movie/similar_movie_model.dart';

class MovieRepository {
  final Dio _dio = Dio(kDioOptionsTMDB);

  Future<PopularMoviesModel> fetchPopularMovies() async {
    try {
      final response = await _dio.get('/movie/popular?&language=pt-BR&page=1');
      final model = PopularMoviesModel.fromMap(response.data);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }

  Future<MovieModel> fetchTrendingMovie() async {
    try {
      final response = await _dio.get('/trending/movie/day?&language=pt-BR');
      final model = MovieModel.fromMap(response.data['results'][0]);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }

  Future<MovieModel> fetchMovieById(int id) async {
    try {
      final response = await _dio.get('/movie/$id?&language=pt-BR');
      final model = MovieModel.fromMap(response.data);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }

  Future<CastModel> fetchCastMovieById(int movieId) async {
    try {
      final response =
          await _dio.get('/movie/$movieId/credits?&language=pt-BR');
      final model = CastModel.fromMap(response.data);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }

  Future<YoutubeModel> fetchTrailerMovieById(int movieId) async {
    try {
      final response = await _dio.get('/movie/$movieId/videos?&language=pt-BR');
      final model = YoutubeModel.fromMap(response.data);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }

  Future<SimilarMovieModel> fetchSimilarMovieById(int movieId) async {
    try {
      final response =
          await _dio.get('/movie/$movieId/similar?&language=pt-BR');
      final model = SimilarMovieModel.fromMap(response.data);
      return model;
    } catch (e) {
      return Future.error('Error');
    }
  }
}
