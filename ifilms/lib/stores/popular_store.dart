import 'package:ifilms/models/movie/movie_model.dart';
import 'package:ifilms/models/serie/serie_model.dart';
import 'package:ifilms/repository/movie_repository.dart';
import 'package:ifilms/repository/serie_repository.dart';
import 'package:mobx/mobx.dart';

part 'popular_store.g.dart';

class PopularStore = _PopularStore with _$PopularStore;

abstract class _PopularStore with Store {
  _PopularStore() {
    autorun((_) async {
      await loadScreen();
    });
  }

  ObservableList<SerieModel> series = ObservableList<SerieModel>();
  ObservableList<MovieModel> movies = ObservableList<MovieModel>();

  @observable
  MovieModel trendingMovie;

  @observable
  int seriesPopularCount = 0;

  @observable
  int moviesPopularCount = 0;

  @observable
  bool loadingPopularScreen = true;

  @observable
  bool errorPopularScreen = false;

  @action
  Future<void> _fetchTrendingMovie() async {
    try {
      final resultMovie = await MovieRepository().fetchTrendingMovie();
      trendingMovie = resultMovie;
      errorPopularScreen = false;
    } catch (e) {
      errorPopularScreen = true;
      return e;
    }
  }

  @action
  Future<void> _fetchPopularSeries() async {
    try {
      final resultSerie = await SerieRepository().fetchPopularSeries();
      series.addAll(resultSerie.series);
      seriesPopularCount = series.length;
      errorPopularScreen = false;
    } catch (e) {
      errorPopularScreen = true;
      return e;
    }
  }

  @action
  Future<void> _fetchPopularMovie() async {
    try {
      final resultMovie = await MovieRepository().fetchPopularMovies();
      movies.addAll(resultMovie.movies);
      moviesPopularCount = movies.length;
      errorPopularScreen = false;
    } catch (e) {
      errorPopularScreen = true;
    }
  }

  Future<void> loadScreen() async {
    loadingPopularScreen = true;
    await _fetchTrendingMovie();
    await _fetchPopularSeries();
    await _fetchPopularMovie();
    loadingPopularScreen = false;
  }
}
