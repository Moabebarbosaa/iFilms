import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/circular_progress.dart';
import 'package:ifilms/stores/movie_detail_store.dart';
import 'components/custom_buttons.dart';
import 'components/custom_cast.dart';
import 'components/custom_details.dart';
import 'components/custom_head.dart';
import 'components/custom_overview.dart';
import 'components/custom_recommend.dart';

class MovieDetailsScreen extends StatelessWidget {
  final MovieDetailStore _movieDetailController = GetIt.I<MovieDetailStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1D21),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Observer(builder: (_) {
          return _movieDetailController.errorMovieDetailScreen ||
                  _movieDetailController.loadingMovieDetailScreen
              ? Container(
                  height: MediaQuery.of(context).size.height,
                  child: CircularProgress())
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomHead(
                        backdropPath:
                            _movieDetailController.movieModel.backdropPath),
                    CustomDetails(
                      movieModel: _movieDetailController.movieModel,
                    ),
                    CustomOverview(
                      overview: _movieDetailController.movieModel.overview,
                    ),
                    CustomButtons(
                      homepage: _movieDetailController.movieModel.homepage,
                    ),
                    CustomCast(
                      castModel: _movieDetailController.castModel,
                    ),
                    _movieDetailController.similarModel.movie.isEmpty
                        ? Container()
                        : CustomRecommend(
                            similar: _movieDetailController.similarModel.movie,
                          ),
                  ],
                );
        }),
      ),
    );
  }
}
