// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serie_detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SerieDetailStore on _SerieDetailStore, Store {
  final _$castModelAtom = Atom(name: '_SerieDetailStore.castModel');

  @override
  CastModel get castModel {
    _$castModelAtom.reportRead();
    return super.castModel;
  }

  @override
  set castModel(CastModel value) {
    _$castModelAtom.reportWrite(value, super.castModel, () {
      super.castModel = value;
    });
  }

  final _$similarSerieModelAtom =
      Atom(name: '_SerieDetailStore.similarSerieModel');

  @override
  SimilarSerieModel get similarSerieModel {
    _$similarSerieModelAtom.reportRead();
    return super.similarSerieModel;
  }

  @override
  set similarSerieModel(SimilarSerieModel value) {
    _$similarSerieModelAtom.reportWrite(value, super.similarSerieModel, () {
      super.similarSerieModel = value;
    });
  }

  final _$youtubeModelAtom = Atom(name: '_SerieDetailStore.youtubeModel');

  @override
  YoutubeModel get youtubeModel {
    _$youtubeModelAtom.reportRead();
    return super.youtubeModel;
  }

  @override
  set youtubeModel(YoutubeModel value) {
    _$youtubeModelAtom.reportWrite(value, super.youtubeModel, () {
      super.youtubeModel = value;
    });
  }

  final _$seasonsEpisodeModelAtom =
      Atom(name: '_SerieDetailStore.seasonsEpisodeModel');

  @override
  SeasonsEpisodeModel get seasonsEpisodeModel {
    _$seasonsEpisodeModelAtom.reportRead();
    return super.seasonsEpisodeModel;
  }

  @override
  set seasonsEpisodeModel(SeasonsEpisodeModel value) {
    _$seasonsEpisodeModelAtom.reportWrite(value, super.seasonsEpisodeModel, () {
      super.seasonsEpisodeModel = value;
    });
  }

  final _$youtubeControllerAtom =
      Atom(name: '_SerieDetailStore.youtubeController');

  @override
  YoutubePlayerController get youtubeController {
    _$youtubeControllerAtom.reportRead();
    return super.youtubeController;
  }

  @override
  set youtubeController(YoutubePlayerController value) {
    _$youtubeControllerAtom.reportWrite(value, super.youtubeController, () {
      super.youtubeController = value;
    });
  }

  final _$serieModelAtom = Atom(name: '_SerieDetailStore.serieModel');

  @override
  SerieModel get serieModel {
    _$serieModelAtom.reportRead();
    return super.serieModel;
  }

  @override
  set serieModel(SerieModel value) {
    _$serieModelAtom.reportWrite(value, super.serieModel, () {
      super.serieModel = value;
    });
  }

  final _$loadingSerieDetailScreenAtom =
      Atom(name: '_SerieDetailStore.loadingSerieDetailScreen');

  @override
  bool get loadingSerieDetailScreen {
    _$loadingSerieDetailScreenAtom.reportRead();
    return super.loadingSerieDetailScreen;
  }

  @override
  set loadingSerieDetailScreen(bool value) {
    _$loadingSerieDetailScreenAtom
        .reportWrite(value, super.loadingSerieDetailScreen, () {
      super.loadingSerieDetailScreen = value;
    });
  }

  final _$loadingSeasonsAtom = Atom(name: '_SerieDetailStore.loadingSeasons');

  @override
  bool get loadingSeasons {
    _$loadingSeasonsAtom.reportRead();
    return super.loadingSeasons;
  }

  @override
  set loadingSeasons(bool value) {
    _$loadingSeasonsAtom.reportWrite(value, super.loadingSeasons, () {
      super.loadingSeasons = value;
    });
  }

  final _$errorSerieDetailScreenAtom =
      Atom(name: '_SerieDetailStore.errorSerieDetailScreen');

  @override
  bool get errorSerieDetailScreen {
    _$errorSerieDetailScreenAtom.reportRead();
    return super.errorSerieDetailScreen;
  }

  @override
  set errorSerieDetailScreen(bool value) {
    _$errorSerieDetailScreenAtom
        .reportWrite(value, super.errorSerieDetailScreen, () {
      super.errorSerieDetailScreen = value;
    });
  }

  final _$errorYoutubeAtom = Atom(name: '_SerieDetailStore.errorYoutube');

  @override
  bool get errorYoutube {
    _$errorYoutubeAtom.reportRead();
    return super.errorYoutube;
  }

  @override
  set errorYoutube(bool value) {
    _$errorYoutubeAtom.reportWrite(value, super.errorYoutube, () {
      super.errorYoutube = value;
    });
  }

  final _$castCountAtom = Atom(name: '_SerieDetailStore.castCount');

  @override
  int get castCount {
    _$castCountAtom.reportRead();
    return super.castCount;
  }

  @override
  set castCount(int value) {
    _$castCountAtom.reportWrite(value, super.castCount, () {
      super.castCount = value;
    });
  }

  final _$similarSerieCountAtom =
      Atom(name: '_SerieDetailStore.similarSerieCount');

  @override
  int get similarSerieCount {
    _$similarSerieCountAtom.reportRead();
    return super.similarSerieCount;
  }

  @override
  set similarSerieCount(int value) {
    _$similarSerieCountAtom.reportWrite(value, super.similarSerieCount, () {
      super.similarSerieCount = value;
    });
  }

  final _$pageAtom = Atom(name: '_SerieDetailStore.page');

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  final _$loadSerieScreenAsyncAction =
      AsyncAction('_SerieDetailStore.loadSerieScreen');

  @override
  Future<void> loadSerieScreen(int id) {
    return _$loadSerieScreenAsyncAction.run(() => super.loadSerieScreen(id));
  }

  final _$loadSeasonsAsyncAction = AsyncAction('_SerieDetailStore.loadSeasons');

  @override
  Future<void> loadSeasons(int idSerie, int seasonNumber) {
    return _$loadSeasonsAsyncAction
        .run(() => super.loadSeasons(idSerie, seasonNumber));
  }

  final _$_fetchEpisodesOfSeasonsAsyncAction =
      AsyncAction('_SerieDetailStore._fetchEpisodesOfSeasons');

  @override
  Future<void> _fetchEpisodesOfSeasons(int idSerie, int seasonNumber) {
    return _$_fetchEpisodesOfSeasonsAsyncAction
        .run(() => super._fetchEpisodesOfSeasons(idSerie, seasonNumber));
  }

  final _$_fetchSerieByIdAsyncAction =
      AsyncAction('_SerieDetailStore._fetchSerieById');

  @override
  Future<void> _fetchSerieById(int id) {
    return _$_fetchSerieByIdAsyncAction.run(() => super._fetchSerieById(id));
  }

  final _$_fetchTrailerSerieByIdAsyncAction =
      AsyncAction('_SerieDetailStore._fetchTrailerSerieById');

  @override
  Future<void> _fetchTrailerSerieById(int id) {
    return _$_fetchTrailerSerieByIdAsyncAction
        .run(() => super._fetchTrailerSerieById(id));
  }

  final _$_fetchCastSerieByIdAsyncAction =
      AsyncAction('_SerieDetailStore._fetchCastSerieById');

  @override
  Future<void> _fetchCastSerieById(int id) {
    return _$_fetchCastSerieByIdAsyncAction
        .run(() => super._fetchCastSerieById(id));
  }

  final _$_fetchSimilarSerieByIdAsyncAction =
      AsyncAction('_SerieDetailStore._fetchSimilarSerieById');

  @override
  Future<void> _fetchSimilarSerieById(int id) {
    return _$_fetchSimilarSerieByIdAsyncAction
        .run(() => super._fetchSimilarSerieById(id));
  }

  final _$_SerieDetailStoreActionController =
      ActionController(name: '_SerieDetailStore');

  @override
  void setPage(int value) {
    final _$actionInfo = _$_SerieDetailStoreActionController.startAction(
        name: '_SerieDetailStore.setPage');
    try {
      return super.setPage(value);
    } finally {
      _$_SerieDetailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _youtubeController(String key) {
    final _$actionInfo = _$_SerieDetailStoreActionController.startAction(
        name: '_SerieDetailStore._youtubeController');
    try {
      return super._youtubeController(key);
    } finally {
      _$_SerieDetailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setYoutubeKey() {
    final _$actionInfo = _$_SerieDetailStoreActionController.startAction(
        name: '_SerieDetailStore._setYoutubeKey');
    try {
      return super._setYoutubeKey();
    } finally {
      _$_SerieDetailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
castModel: ${castModel},
similarSerieModel: ${similarSerieModel},
youtubeModel: ${youtubeModel},
seasonsEpisodeModel: ${seasonsEpisodeModel},
youtubeController: ${youtubeController},
serieModel: ${serieModel},
loadingSerieDetailScreen: ${loadingSerieDetailScreen},
loadingSeasons: ${loadingSeasons},
errorSerieDetailScreen: ${errorSerieDetailScreen},
errorYoutube: ${errorYoutube},
castCount: ${castCount},
similarSerieCount: ${similarSerieCount},
page: ${page}
    ''';
  }
}
