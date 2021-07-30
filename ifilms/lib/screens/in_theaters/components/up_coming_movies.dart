import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/show_media_details.dart';
import 'package:ifilms/screens/movie_details/movie_details_screen.dart';
import 'package:ifilms/stores/in_theaters_store.dart';
import 'package:ifilms/stores/movie_detail_store.dart';

class UpComingMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final InTheatersStore _inTheatersStore = GetIt.I<InTheatersStore>();
    final MovieDetailStore _movieController = GetIt.I<MovieDetailStore>();

    return Observer(builder: (_) {
      return ListView.separated(
          separatorBuilder: (context, index) => Divider(
                color: Colors.transparent,
              ),
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: _inTheatersStore.upComingMovies.mediaDetails.length,
          itemBuilder: (context, index) {
            final mediaType =
                _inTheatersStore.upComingMovies.mediaDetails[index];
            return GestureDetector(
              child: ShowMediaDetails(
                media: mediaType,
              ),
              onTap: () {
                _movieController.loadMovieScreen(mediaType.id);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => MovieDetailsScreen(),
                  ),
                );
              },
            );
          });
    });
  }
}
