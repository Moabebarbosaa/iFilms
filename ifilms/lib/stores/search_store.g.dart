// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchStore on _SearchStore, Store {
  final _$movieGenresAtom = Atom(name: '_SearchStore.movieGenres');

  @override
  MovieGenreModel get movieGenres {
    _$movieGenresAtom.reportRead();
    return super.movieGenres;
  }

  @override
  set movieGenres(MovieGenreModel value) {
    _$movieGenresAtom.reportWrite(value, super.movieGenres, () {
      super.movieGenres = value;
    });
  }

  final _$serieGenresAtom = Atom(name: '_SearchStore.serieGenres');

  @override
  SerieGenreModel get serieGenres {
    _$serieGenresAtom.reportRead();
    return super.serieGenres;
  }

  @override
  set serieGenres(SerieGenreModel value) {
    _$serieGenresAtom.reportWrite(value, super.serieGenres, () {
      super.serieGenres = value;
    });
  }

  final _$moviesByGenreAtom = Atom(name: '_SearchStore.moviesByGenre');

  @override
  ListDetailModel get moviesByGenre {
    _$moviesByGenreAtom.reportRead();
    return super.moviesByGenre;
  }

  @override
  set moviesByGenre(ListDetailModel value) {
    _$moviesByGenreAtom.reportWrite(value, super.moviesByGenre, () {
      super.moviesByGenre = value;
    });
  }

  final _$searchAtom = Atom(name: '_SearchStore.search');

  @override
  ListDetailModel get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(ListDetailModel value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  final _$serieByGenreAtom = Atom(name: '_SearchStore.serieByGenre');

  @override
  ListDetailModel get serieByGenre {
    _$serieByGenreAtom.reportRead();
    return super.serieByGenre;
  }

  @override
  set serieByGenre(ListDetailModel value) {
    _$serieByGenreAtom.reportWrite(value, super.serieByGenre, () {
      super.serieByGenre = value;
    });
  }

  final _$errorSearchScreenAtom = Atom(name: '_SearchStore.errorSearchScreen');

  @override
  bool get errorSearchScreen {
    _$errorSearchScreenAtom.reportRead();
    return super.errorSearchScreen;
  }

  @override
  set errorSearchScreen(bool value) {
    _$errorSearchScreenAtom.reportWrite(value, super.errorSearchScreen, () {
      super.errorSearchScreen = value;
    });
  }

  final _$loadingSearchScreenAtom =
      Atom(name: '_SearchStore.loadingSearchScreen');

  @override
  bool get loadingSearchScreen {
    _$loadingSearchScreenAtom.reportRead();
    return super.loadingSearchScreen;
  }

  @override
  set loadingSearchScreen(bool value) {
    _$loadingSearchScreenAtom.reportWrite(value, super.loadingSearchScreen, () {
      super.loadingSearchScreen = value;
    });
  }

  final _$pageAtom = Atom(name: '_SearchStore.page');

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

  final _$loadSearchScreenAsyncAction =
      AsyncAction('_SearchStore.loadSearchScreen');

  @override
  Future<void> loadSearchScreen() {
    return _$loadSearchScreenAsyncAction.run(() => super.loadSearchScreen());
  }

  final _$_fetchMovieGenreAsyncAction =
      AsyncAction('_SearchStore._fetchMovieGenre');

  @override
  Future<void> _fetchMovieGenre() {
    return _$_fetchMovieGenreAsyncAction.run(() => super._fetchMovieGenre());
  }

  final _$_fetchSerieGenreAsyncAction =
      AsyncAction('_SearchStore._fetchSerieGenre');

  @override
  Future<void> _fetchSerieGenre() {
    return _$_fetchSerieGenreAsyncAction.run(() => super._fetchSerieGenre());
  }

  final _$fetchMovieGenreAsyncAction =
      AsyncAction('_SearchStore.fetchMovieGenre');

  @override
  Future<void> fetchMovieGenre(int genre) {
    return _$fetchMovieGenreAsyncAction.run(() => super.fetchMovieGenre(genre));
  }

  final _$fetchSerieGenreAsyncAction =
      AsyncAction('_SearchStore.fetchSerieGenre');

  @override
  Future<void> fetchSerieGenre(int genre) {
    return _$fetchSerieGenreAsyncAction.run(() => super.fetchSerieGenre(genre));
  }

  final _$fetchQueryAsyncAction = AsyncAction('_SearchStore.fetchQuery');

  @override
  Future<void> fetchQuery(String query) {
    return _$fetchQueryAsyncAction.run(() => super.fetchQuery(query));
  }

  final _$_SearchStoreActionController = ActionController(name: '_SearchStore');

  @override
  void setPage(int value) {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.setPage');
    try {
      return super.setPage(value);
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
movieGenres: ${movieGenres},
serieGenres: ${serieGenres},
moviesByGenre: ${moviesByGenre},
search: ${search},
serieByGenre: ${serieByGenre},
errorSearchScreen: ${errorSearchScreen},
loadingSearchScreen: ${loadingSearchScreen},
page: ${page}
    ''';
  }
}
