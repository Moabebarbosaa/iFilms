// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PopularStore on _PopularStore, Store {
  final _$trendingMovieAtom = Atom(name: '_PopularStore.trendingMovie');

  @override
  MovieModel get trendingMovie {
    _$trendingMovieAtom.reportRead();
    return super.trendingMovie;
  }

  @override
  set trendingMovie(MovieModel value) {
    _$trendingMovieAtom.reportWrite(value, super.trendingMovie, () {
      super.trendingMovie = value;
    });
  }

  final _$seriesPopularCountAtom =
      Atom(name: '_PopularStore.seriesPopularCount');

  @override
  int get seriesPopularCount {
    _$seriesPopularCountAtom.reportRead();
    return super.seriesPopularCount;
  }

  @override
  set seriesPopularCount(int value) {
    _$seriesPopularCountAtom.reportWrite(value, super.seriesPopularCount, () {
      super.seriesPopularCount = value;
    });
  }

  final _$moviesPopularCountAtom =
      Atom(name: '_PopularStore.moviesPopularCount');

  @override
  int get moviesPopularCount {
    _$moviesPopularCountAtom.reportRead();
    return super.moviesPopularCount;
  }

  @override
  set moviesPopularCount(int value) {
    _$moviesPopularCountAtom.reportWrite(value, super.moviesPopularCount, () {
      super.moviesPopularCount = value;
    });
  }

  final _$loadingPopularScreenAtom =
      Atom(name: '_PopularStore.loadingPopularScreen');

  @override
  bool get loadingPopularScreen {
    _$loadingPopularScreenAtom.reportRead();
    return super.loadingPopularScreen;
  }

  @override
  set loadingPopularScreen(bool value) {
    _$loadingPopularScreenAtom.reportWrite(value, super.loadingPopularScreen,
        () {
      super.loadingPopularScreen = value;
    });
  }

  final _$errorPopularScreenAtom =
      Atom(name: '_PopularStore.errorPopularScreen');

  @override
  bool get errorPopularScreen {
    _$errorPopularScreenAtom.reportRead();
    return super.errorPopularScreen;
  }

  @override
  set errorPopularScreen(bool value) {
    _$errorPopularScreenAtom.reportWrite(value, super.errorPopularScreen, () {
      super.errorPopularScreen = value;
    });
  }

  final _$_fetchTrendingMovieAsyncAction =
      AsyncAction('_PopularStore._fetchTrendingMovie');

  @override
  Future<void> _fetchTrendingMovie() {
    return _$_fetchTrendingMovieAsyncAction
        .run(() => super._fetchTrendingMovie());
  }

  final _$_fetchPopularSeriesAsyncAction =
      AsyncAction('_PopularStore._fetchPopularSeries');

  @override
  Future<void> _fetchPopularSeries() {
    return _$_fetchPopularSeriesAsyncAction
        .run(() => super._fetchPopularSeries());
  }

  final _$_fetchPopularMovieAsyncAction =
      AsyncAction('_PopularStore._fetchPopularMovie');

  @override
  Future<void> _fetchPopularMovie() {
    return _$_fetchPopularMovieAsyncAction
        .run(() => super._fetchPopularMovie());
  }

  @override
  String toString() {
    return '''
trendingMovie: ${trendingMovie},
seriesPopularCount: ${seriesPopularCount},
moviesPopularCount: ${moviesPopularCount},
loadingPopularScreen: ${loadingPopularScreen},
errorPopularScreen: ${errorPopularScreen}
    ''';
  }
}
