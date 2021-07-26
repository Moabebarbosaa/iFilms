// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_theaters_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$InTheatersStore on _InTheatersStore, Store {
  final _$pageAtom = Atom(name: '_InTheatersStore.page');

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

  final _$moviesInTheatersAtom =
      Atom(name: '_InTheatersStore.moviesInTheaters');

  @override
  ListDetailModel get moviesInTheaters {
    _$moviesInTheatersAtom.reportRead();
    return super.moviesInTheaters;
  }

  @override
  set moviesInTheaters(ListDetailModel value) {
    _$moviesInTheatersAtom.reportWrite(value, super.moviesInTheaters, () {
      super.moviesInTheaters = value;
    });
  }

  final _$upComingMoviesAtom = Atom(name: '_InTheatersStore.upComingMovies');

  @override
  ListDetailModel get upComingMovies {
    _$upComingMoviesAtom.reportRead();
    return super.upComingMovies;
  }

  @override
  set upComingMovies(ListDetailModel value) {
    _$upComingMoviesAtom.reportWrite(value, super.upComingMovies, () {
      super.upComingMovies = value;
    });
  }

  final _$errorMovieInTheatersScreenAtom =
      Atom(name: '_InTheatersStore.errorMovieInTheatersScreen');

  @override
  bool get errorMovieInTheatersScreen {
    _$errorMovieInTheatersScreenAtom.reportRead();
    return super.errorMovieInTheatersScreen;
  }

  @override
  set errorMovieInTheatersScreen(bool value) {
    _$errorMovieInTheatersScreenAtom
        .reportWrite(value, super.errorMovieInTheatersScreen, () {
      super.errorMovieInTheatersScreen = value;
    });
  }

  final _$loadingInTheatersScreenAtom =
      Atom(name: '_InTheatersStore.loadingInTheatersScreen');

  @override
  bool get loadingInTheatersScreen {
    _$loadingInTheatersScreenAtom.reportRead();
    return super.loadingInTheatersScreen;
  }

  @override
  set loadingInTheatersScreen(bool value) {
    _$loadingInTheatersScreenAtom
        .reportWrite(value, super.loadingInTheatersScreen, () {
      super.loadingInTheatersScreen = value;
    });
  }

  final _$loadMovieInTheaterScreenAsyncAction =
      AsyncAction('_InTheatersStore.loadMovieInTheaterScreen');

  @override
  Future<void> loadMovieInTheaterScreen() {
    return _$loadMovieInTheaterScreenAsyncAction
        .run(() => super.loadMovieInTheaterScreen());
  }

  final _$_fetchMoviesInTheatersAsyncAction =
      AsyncAction('_InTheatersStore._fetchMoviesInTheaters');

  @override
  Future<void> _fetchMoviesInTheaters() {
    return _$_fetchMoviesInTheatersAsyncAction
        .run(() => super._fetchMoviesInTheaters());
  }

  final _$_fetchUpComingMoviesAsyncAction =
      AsyncAction('_InTheatersStore._fetchUpComingMovies');

  @override
  Future<void> _fetchUpComingMovies() {
    return _$_fetchUpComingMoviesAsyncAction
        .run(() => super._fetchUpComingMovies());
  }

  final _$_InTheatersStoreActionController =
      ActionController(name: '_InTheatersStore');

  @override
  void setPage(int value) {
    final _$actionInfo = _$_InTheatersStoreActionController.startAction(
        name: '_InTheatersStore.setPage');
    try {
      return super.setPage(value);
    } finally {
      _$_InTheatersStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
page: ${page},
moviesInTheaters: ${moviesInTheaters},
upComingMovies: ${upComingMovies},
errorMovieInTheatersScreen: ${errorMovieInTheatersScreen},
loadingInTheatersScreen: ${loadingInTheatersScreen}
    ''';
  }
}
