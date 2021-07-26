import 'package:ifilms/models/list/list_detail_model.dart';
import 'package:ifilms/repository/in_theater_repository.dart';
import 'package:ifilms/repository/movie_repository.dart';
import 'package:mobx/mobx.dart';

part 'in_theaters_store.g.dart';

class InTheatersStore = _InTheatersStore with _$InTheatersStore;

abstract class _InTheatersStore with Store {
  _InTheatersStore() {
    autorun((_) async {
      await loadMovieInTheaterScreen();
    });
  }

  @observable
  int page = 0;

  @action
  void setPage(int value) => page = value;

  @observable
  ListDetailModel moviesInTheaters;

  @observable
  ListDetailModel upComingMovies;

  @observable
  bool errorMovieInTheatersScreen = false;

  @observable
  bool loadingInTheatersScreen = true;

  @action
  Future<void> loadMovieInTheaterScreen() async {
    loadingInTheatersScreen = true;
    await _fetchMoviesInTheaters();
    await _fetchUpComingMovies();
    loadingInTheatersScreen = false;
  }

  @action
  Future<void> _fetchMoviesInTheaters() async {
    try {
      final result = await InTheaterRepository().fetchMoviesInTheaters();
      moviesInTheaters = result;
      errorMovieInTheatersScreen = false;
    } catch (error) {
      errorMovieInTheatersScreen = true;
      return error;
    }
  }

  @action
  Future<void> _fetchUpComingMovies() async {
    try {
      final result = await InTheaterRepository().fetchUpComingModel();
      upComingMovies = result;
      errorMovieInTheatersScreen = false;
    } catch (error) {
      errorMovieInTheatersScreen = true;
      return error;
    }
  }
}
