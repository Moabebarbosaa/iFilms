import 'package:ifilms/models/movie_serie/cast_model.dart';
import 'package:ifilms/models/movie_serie/youtube_model.dart';
import 'package:ifilms/models/serie/seasons_episode_model.dart';
import 'package:ifilms/models/serie/serie_model.dart';
import 'package:ifilms/models/serie/similar_serie_model.dart';
import 'package:ifilms/repository/serie_repository.dart';

import 'package:mobx/mobx.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

part 'serie_detail_store.g.dart';

class SerieDetailStore = _SerieDetailStore with _$SerieDetailStore;

abstract class _SerieDetailStore with Store {
  @observable
  CastModel castModel;

  @observable
  SimilarSerieModel similarSerieModel;

  @observable
  YoutubeModel youtubeModel;

  @observable
  SeasonsEpisodeModel seasonsEpisodeModel;

  @observable
  YoutubePlayerController youtubeController;

  @observable
  SerieModel serieModel;

  @observable
  bool loadingSerieDetailScreen = true;

  @observable
  bool loadingSeasons = true;

  @observable
  bool errorSerieDetailScreen = false;

  @observable
  bool errorYoutube = false;

  @observable
  int castCount = 0;

  @observable
  int similarSerieCount = 0;

  @observable
  int page = 0;

  @action
  void setPage(int value) => page = value;

  @action
  Future<void> loadSerieScreen(int id) async {
    loadingSerieDetailScreen = true;
    await loadSeasons(id, 1);
    await _fetchTrailerSerieById(id);
    await _fetchSerieById(id);
    await _fetchCastSerieById(id);
    await _fetchSimilarSerieById(id);
    _setYoutubeKey();

    loadingSerieDetailScreen = false;
  }

  @action
  Future<void> loadSeasons(int idSerie, int seasonNumber) async {
    loadingSeasons = true;
    _fetchEpisodesOfSeasons(idSerie, seasonNumber);
    loadingSeasons = false;
  }

  @action
  Future<void> _fetchEpisodesOfSeasons(int idSerie, int seasonNumber) async {
    try {
      final result =
          await SerieRepository().fetchEpisodesofSeasons(idSerie, seasonNumber);
      seasonsEpisodeModel = result;
      errorSerieDetailScreen = false;
    } catch (error) {
      errorSerieDetailScreen = true;
      return error;
    }
  }

  @action
  Future<void> _fetchSerieById(int id) async {
    try {
      final result = await SerieRepository().fetchSerieById(id);
      serieModel = result;
      errorSerieDetailScreen = false;
    } catch (error) {
      errorSerieDetailScreen = true;
      return error;
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
  Future<void> _fetchTrailerSerieById(int id) async {
    try {
      final result = await SerieRepository().fetchTrailerSerieById(id);
      youtubeModel = result;
      errorSerieDetailScreen = false;
    } catch (error) {
      errorSerieDetailScreen = true;
    }
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
  Future<void> _fetchCastSerieById(int id) async {
    try {
      final result = await SerieRepository().fetchCastSerieById(id);
      castModel = result;
      castCount = result.cast.length;
      errorSerieDetailScreen = false;
    } catch (error) {
      errorSerieDetailScreen = true;
    }
  }

  @action
  Future<void> _fetchSimilarSerieById(int id) async {
    try {
      final result = await SerieRepository().fetchSimilarSerieById(id);
      similarSerieModel = result;
      similarSerieCount = result.series.length;
      errorSerieDetailScreen = false;
    } catch (error) {
      errorSerieDetailScreen = true;
    }
  }
}
