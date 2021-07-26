import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/custom_poster.dart';
import 'package:ifilms/screens/home/components/custom_subtitle.dart';
import 'package:ifilms/screens/movie_details/movie_details_screen.dart';
import 'package:ifilms/screens/serie_details/serie_detail_screen.dart';
import 'package:ifilms/stores/movie_detail_store.dart';
import 'package:ifilms/stores/serie_detail_store.dart';

class CustomCarousel extends StatelessWidget {
  final List<dynamic> obras;
  final String type;

  final MovieDetailStore _movieController = GetIt.I<MovieDetailStore>();
  final SerieDetailStore _serieController = GetIt.I<SerieDetailStore>();

  CustomCarousel({@required this.obras, @required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 300,
          child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: obras.length,
              padding: EdgeInsets.only(left: 20),
              itemBuilder: (BuildContext context, int index) {
                final obra = obras[index];
                return Container(
                  width: 178,
                  padding: EdgeInsets.only(right: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        child: CustomPoster(
                          posterPath: obra.posterPath,
                          height: 214,
                          width: 158,
                          boxShape: null,
                        ),
                        onTap: () {
                          if (obra.releaseDate != null) {
                            if (type == 'movie') {
                              _movieController.loadMovieScreen(obra.id);
                              print("ID MOVIE: ${obra.id}");
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => MovieDetailsScreen(),
                                ),
                              );
                            } else {
                              _serieController.loadSerieScreen(obra.id);
                              _serieController.setPage(0);
                              print("ID SERIE: ${obra.id}");
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SerieDetailScreen(),
                                ),
                              );
                            }
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomSubtitle(
                        index: index,
                        title: obra.title,
                        releaseDate: obra.releaseDate,
                      ),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
