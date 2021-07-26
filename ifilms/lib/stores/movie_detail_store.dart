import 'package:ifilms/models/movie/movie_model.dart';
import 'package:ifilms/models/movie_serie/video_model.dart';
import 'package:ifilms/models/movie_serie/youtube_model.dart';
import 'package:ifilms/models/movie_serie/cast_model.dart';
import 'package:ifilms/models/movie/similar_movie_model.dart';
import 'package:ifilms/repository/movie_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

part 'movie_detail_store.g.dart';

class MovieDetailStore = _MovieDetailStore with _$MovieDetailStore;

abstract class _MovieDetailStore with Store {
  @observable
  MovieModel movieModel;

  @observable
  CastModel castModel;

  @observable
  SimilarMovieModel similarModel;

  @observable
  YoutubeModel youtubeModel;

  @observable
  bool loadingMovieDetailScreen = true;

  @observable
  bool errorMovieDetailScreen = false;

  @observable
  bool errorYoutube = false;

  @observable
  int castCount = 0;

  @observable
  int similarMovieCount = 0;

  @observable
  YoutubePlayerController youtubeController;

  @action
  Future<void> loadMovieScreen(int id) async {
    loadingMovieDetailScreen = true;
    await _fetchTrailerMovieById(id);
    await _fetchMovieById(id);
    await _fetchCastMovieById(id);
    await _fetchSimilarMovieById(id);
    _setYoutubeKey();
    loadingMovieDetailScreen = false;
  }

  @action
  void _setYoutubeKey() {
    if (youtubeModel.videos.length > 0) {
      _youtubeController(youtubeModel.videos[0].key);
      errorYoutube = false;
    } else {
      errorYoutube = true;
    }
  }

  @action
  void _youtubeController(String key) {
    youtubeController = YoutubePlayerController(
      initialVideoId: key,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: true,
        forceHD: true,
        enableCaption: true,
      ),
    );
  }

  @action
  Future<void> _fetchMovieById(int id) async {
    try {
      final result = await MovieRepository().fetchMovieById(id);
      movieModel = result;
      errorMovieDetailScreen = false;
    } catch (error) {
      errorMovieDetailScreen = true;
      return error;
    }
  }

  @action
  Future<void> _fetchCastMovieById(int id) async {
    try {
      final result = await MovieRepository().fetchCastMovieById(id);
      castModel = result;
      castCount = result.cast.length;
      errorMovieDetailScreen = false;
    } catch (error) {
      errorMovieDetailScreen = true;
    }
  }

  @action
  Future<void> _fetchTrailerMovieById(int id) async {
    try {
      final result = await MovieRepository().fetchTrailerMovieById(id);
      youtubeModel = result;
      errorMovieDetailScreen = false;
    } catch (error) {
      errorMovieDetailScreen = true;
    }
  }

  @action
  Future<void> _fetchSimilarMovieById(int id) async {
    try {
      final result = await MovieRepository().fetchSimilarMovieById(id);
      similarModel = result;
      similarMovieCount = result.movie.length;
      errorMovieDetailScreen = false;
    } catch (error) {
      errorMovieDetailScreen = true;
    }
  }
}
