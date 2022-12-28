import 'package:ifilms/models/genre/movie_genre_model.dart';
import 'package:ifilms/models/genre/serie_genre_model.dart';
import 'package:ifilms/models/list/list_detail_model.dart';
import 'package:ifilms/repository/search_repository.dart';
import 'package:mobx/mobx.dart';

part 'search_store.g.dart';

class SearchStore = _SearchStore with _$SearchStore;

abstract class _SearchStore with Store {
  _SearchStore() {
    autorun((_) async {
      await loadSearchScreen();
    });
  }

  @observable
  MovieGenreModel movieGenres;

  @observable
  SerieGenreModel serieGenres;

  @observable
  ListDetailModel moviesByGenre;

  @observable
  ListDetailModel search;

  @observable
  ListDetailModel serieByGenre;

  @observable
  bool errorSearchScreen = false;

  @observable
  bool loadingSearchScreen = false;

  @observable
  int page = 0;

  @action
  void setPage(int value) => page = value;

  @action
  Future<void> loadSearchScreen() async {
    loadingSearchScreen = true;
    await _fetchMovieGenre();
    await _fetchSerieGenre();
    loadingSearchScreen = false;
  }

  @action
  Future<void> _fetchMovieGenre() async {
    try {
      loadingSearchScreen = true;
      final result = await SearchRepository().fetchGenreMovies();
      movieGenres = result;
      loadingSearchScreen = false;
      errorSearchScreen = false;
    } catch (e) {
      errorSearchScreen = true;
      return e;
    }
  }

  @action
  Future<void> _fetchSerieGenre() async {
    try {
      loadingSearchScreen = true;
      final result = await SearchRepository().fetchGenreSeries();
      serieGenres = result;
      loadingSearchScreen = false;
      errorSearchScreen = false;
    } catch (e) {
      errorSearchScreen = true;
      return e;
    }
  }

  @action
  Future<void> fetchMovieGenre(int genre) async {
    try {
      loadingSearchScreen = true;
      final result = await SearchRepository().fetchMoviesByGenre(genre);
      moviesByGenre = result;
      loadingSearchScreen = false;
      errorSearchScreen = false;
    } catch (e) {
      errorSearchScreen = true;
      return e;
    }
  }

  @action
  Future<void> fetchSerieGenre(int genre) async {
    try {
      loadingSearchScreen = true;
      final result = await SearchRepository().fetchSeriesByGenre(genre);
      serieByGenre = result;
      loadingSearchScreen = false;
      errorSearchScreen = false;
    } catch (e) {
      errorSearchScreen = true;
      return e;
    }
  }

  @action
  Future<void> fetchQuery(String query) async {
    try {
      loadingSearchScreen = true;
      final result = await SearchRepository().fetchByQuery(query);
      search = result;
      loadingSearchScreen = false;
      errorSearchScreen = false;
    } catch (e) {
      errorSearchScreen = true;
      return e;
    }
  }
}
