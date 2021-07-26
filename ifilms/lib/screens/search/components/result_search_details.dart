import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/circular_progress.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/components/show_media_details.dart';
import 'package:ifilms/screens/movie_details/movie_details_screen.dart';
import 'package:ifilms/screens/serie_details/serie_detail_screen.dart';
import 'package:ifilms/stores/movie_detail_store.dart';
import 'package:ifilms/stores/search_store.dart';
import 'package:ifilms/stores/serie_detail_store.dart';

class ResultSearchDetails extends StatelessWidget {
  final SearchStore _searchStore = GetIt.I<SearchStore>();
  final MovieDetailStore _movieController = GetIt.I<MovieDetailStore>();
  final SerieDetailStore _serieController = GetIt.I<SerieDetailStore>();

  final String titleGenre;
  ResultSearchDetails({this.titleGenre});

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
                itemCount: _searchStore.search.mediaDetails.length,
                itemBuilder: (context, index) {
                  final media = _searchStore.search.mediaDetails[index];
                  if (media.mediaType == 'person' || media == null) {
                    return Container();
                  } else {
                    return GestureDetector(
                      child: ShowMediaDetails(
                        media: media,
                      ),
                      onTap: () {
                        if (media.mediaType == 'movie') {
                          _movieController.loadMovieScreen(media.id);
                          print("ID MOVIE: ${media.id}");
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => MovieDetailsScreen(),
                            ),
                          );
                        } else if (media.mediaType == 'tv') {
                          _serieController.loadSerieScreen(media.id);
                          print("ID Serie: ${media.id}");
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => SerieDetailScreen(),
                            ),
                          );
                        }
                      },
                    );
                  }
                }),
          ),
        );
      }
    });
  }
}
