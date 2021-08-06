// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieDetailStore on _MovieDetailStore, Store {
  final _$movieModelAtom = Atom(name: '_MovieDetailStore.movieModel');

  @override
  MovieModel get movieModel {
    _$movieModelAtom.reportRead();
    return super.movieModel;
  }

  @override
  set movieModel(MovieModel value) {
    _$movieModelAtom.reportWrite(value, super.movieModel, () {
      super.movieModel = value;
    });
  }

  final _$castModelAtom = Atom(name: '_MovieDetailStore.castModel');

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

  final _$similarModelAtom = Atom(name: '_MovieDetailStore.similarModel');

  @override
  SimilarMovieModel get similarModel {
    _$similarModelAtom.reportRead();
    return super.similarModel;
  }

  @override
  set similarModel(SimilarMovieModel value) {
    _$similarModelAtom.reportWrite(value, super.similarModel, () {
      super.similarModel = value;
    });
  }

  final _$youtubeModelAtom = Atom(name: '_MovieDetailStore.youtubeModel');

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

  final _$loadingMovieDetailScreenAtom =
      Atom(name: '_MovieDetailStore.loadingMovieDetailScreen');

  @override
  bool get loadingMovieDetailScreen {
    _$loadingMovieDetailScreenAtom.reportRead();
    return super.loadingMovieDetailScreen;
  }

  @override
  set loadingMovieDetailScreen(bool value) {
    _$loadingMovieDetailScreenAtom
        .reportWrite(value, super.loadingMovieDetailScreen, () {
      super.loadingMovieDetailScreen = value;
    });
  }

  final _$errorMovieDetailScreenAtom =
      Atom(name: '_MovieDetailStore.errorMovieDetailScreen');

  @override
  bool get errorMovieDetailScreen {
    _$errorMovieDetailScreenAtom.reportRead();
    return super.errorMovieDetailScreen;
  }

  @override
  set errorMovieDetailScreen(bool value) {
    _$errorMovieDetailScreenAtom
        .reportWrite(value, super.errorMovieDetailScreen, () {
      super.errorMovieDetailScreen = value;
    });
  }

  final _$errorYoutubeAtom = Atom(name: '_MovieDetailStore.errorYoutube');

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

  final _$castCountAtom = Atom(name: '_MovieDetailStore.castCount');

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

  final _$similarMovieCountAtom =
      Atom(name: '_MovieDetailStore.similarMovieCount');

  @override
  int get similarMovieCount {
    _$similarMovieCountAtom.reportRead();
    return super.similarMovieCount;
  }

  @override
  set similarMovieCount(int value) {
    _$similarMovieCountAtom.reportWrite(value, super.similarMovieCount, () {
      super.similarMovieCount = value;
    });
  }

  final _$loadMovieScreenAsyncAction =
      AsyncAction('_MovieDetailStore.loadMovieScreen');

  @override
  Future<void> loadMovieScreen(int id) {
    return _$loadMovieScreenAsyncAction.run(() => super.loadMovieScreen(id));
  }

  final _$_fetchMovieByIdAsyncAction =
      AsyncAction('_MovieDetailStore._fetchMovieById');

  @override
  Future<void> _fetchMovieById(int id) {
    return _$_fetchMovieByIdAsyncAction.run(() => super._fetchMovieById(id));
  }

  final _$_fetchCastMovieByIdAsyncAction =
      AsyncAction('_MovieDetailStore._fetchCastMovieById');

  @override
  Future<void> _fetchCastMovieById(int id) {
    return _$_fetchCastMovieByIdAsyncAction
        .run(() => super._fetchCastMovieById(id));
  }

  final _$_fetchTrailerMovieByIdAsyncAction =
      AsyncAction('_MovieDetailStore._fetchTrailerMovieById');

  @override
  Future<void> _fetchTrailerMovieById(int id) {
    return _$_fetchTrailerMovieByIdAsyncAction
        .run(() => super._fetchTrailerMovieById(id));
  }

  final _$_fetchSimilarMovieByIdAsyncAction =
      AsyncAction('_MovieDetailStore._fetchSimilarMovieById');

  @override
  Future<void> _fetchSimilarMovieById(int id) {
    return _$_fetchSimilarMovieByIdAsyncAction
        .run(() => super._fetchSimilarMovieById(id));
  }

  @override
  String toString() {
    return '''
movieModel: ${movieModel},
castModel: ${castModel},
similarModel: ${similarModel},
youtubeModel: ${youtubeModel},
loadingMovieDetailScreen: ${loadingMovieDetailScreen},
errorMovieDetailScreen: ${errorMovieDetailScreen},
errorYoutube: ${errorYoutube},
castCount: ${castCount},
similarMovieCount: ${similarMovieCount}
    ''';
  }
}
