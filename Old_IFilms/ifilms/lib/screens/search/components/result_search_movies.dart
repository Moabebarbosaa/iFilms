import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/circular_progress.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/components/show_media_details.dart';
import 'package:ifilms/screens/movie_details/movie_details_screen.dart';
import 'package:ifilms/stores/movie_detail_store.dart';
import 'package:ifilms/stores/search_store.dart';
import 'package:intl/intl.dart';

class ResultSearchMovies extends StatelessWidget {
  final SearchStore _searchStore = GetIt.I<SearchStore>();
  final MovieDetailStore _movieController = GetIt.I<MovieDetailStore>();
  final df = new DateFormat('dd/MM');

  final String titleGenre;
  ResultSearchMovies({this.titleGenre});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (_searchStore.loadingSearchScreen) {
        return CircularProgress();
      } else {
        return Scaffold(
          backgroundColor: Color(0xFF1B1D21),
          appBar: AppBar(
            backgroundColor: Color(0xFF12151D),
            centerTitle: true,
            title: CustomText(
              text: titleGenre,
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ListView.separated(
                separatorBuilder: (context, index) => Container(),
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: _searchStore.moviesByGenre.mediaDetails.length,
                itemBuilder: (context, index) {
                  final movie = _searchStore.moviesByGenre.mediaDetails[index];
                  return GestureDetector(
                    child: ShowMediaDetails(
                      media: movie,
                    ),
                    onTap: () {
                      _movieController.loadMovieScreen(movie.id);
                      print("ID MOVIE: ${movie.id}");
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => MovieDetailsScreen(),
                        ),
                      );
                    },
                  );
                }),
          ),
        );
      }
    });
  }
}
