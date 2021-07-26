import 'package:dio/dio.dart';
import 'package:ifilms/core/api_.dart';
import 'package:ifilms/models/movie_serie/cast_model.dart';
import 'package:ifilms/models/movie/similar_movie_model.dart';
import 'package:ifilms/models/movie_serie/youtube_model.dart';
import 'package:ifilms/models/serie/popular_serie_model.dart';
import 'package:ifilms/models/serie/seasons_episode_model.dart';
import 'package:ifilms/models/serie/serie_model.dart';
import 'package:ifilms/models/serie/similar_serie_model.dart';

class SerieRepository {
  final Dio _dio = Dio(kDioOptionsTMDB);

  Future<PopularSerieModel> fetchPopularSeries() async {
    try {
      final response = await _dio.get('/tv/popular?&language=pt-BR&page=1');
      final model = PopularSerieModel.fromMap(response.data);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }

  Future<SerieModel> fetchSerieById(int id) async {
    try {
      final response = await _dio.get('/tv/$id?&language=pt-BR');
      final model = SerieModel.fromMap(response.data);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }

  Future<SeasonsEpisodeModel> fetchEpisodesofSeasons(
      int idSerie, int seasonNumber) async {
    try {
      final response =
          await _dio.get('/tv/$idSerie/season/$seasonNumber?&language=pt-BR');
      final model = SeasonsEpisodeModel.fromMap(response.data);
      return model;
    } catch (e) {
      print("F: $e");
      return Future.error('Error');
    }
  }

  Future<YoutubeModel> fetchTrailerSerieById(int id) async {
    try {
      final response = await _dio.get('/tv/$id/videos?&language=pt-BR');
      final model = YoutubeModel.fromMap(response.data);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }

  Future<CastModel> fetchCastSerieById(int serieId) async {
    try {
      final response = await _dio.get('/tv/$serieId/credits?&language=pt-BR');
      final model = CastModel.fromMap(response.data);
      return model;
    } catch (e) {
      print(e);
      return Future.error('Error');
    }
  }

  Future<SimilarSerieModel> fetchSimilarSerieById(int serieId) async {
    try {
      final response = await _dio.get('/tv/$serieId/similar?&language=pt-BR');
      final model = SimilarSerieModel.fromMap(response.data);
      return model;
    } catch (e) {
      return Future.error('Error');
    }
  }
}
