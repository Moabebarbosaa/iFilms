import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/models/movie/movie_model.dart';
import 'package:ifilms/screens/movie_details/movie_details_screen.dart';
import 'package:ifilms/stores/movie_detail_store.dart';

class TrendingMovie extends StatelessWidget {
  final MovieModel trendingMovie;

  final MovieDetailStore _movieController = GetIt.I<MovieDetailStore>();

  TrendingMovie({@required this.trendingMovie});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        height: size.height * 0.70,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: trendingMovie.posterPath == null
                ? AssetImage('images/not-found.png')
                : NetworkImage(
                    'https://image.tmdb.org/t/p/w500/' +
                        trendingMovie.posterPath,
                  ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      onTap: () {
        _movieController.loadMovieScreen(trendingMovie.id);
        print(trendingMovie.id);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => MovieDetailsScreen(),
          ),
        );
      },
    );
  }
}
