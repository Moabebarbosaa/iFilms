import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/models/genre/genre_model.dart';
import 'package:ifilms/screens/search/components/result_search_movies.dart';
import 'package:ifilms/screens/search/components/result_search_series.dart';
import 'package:ifilms/stores/search_store.dart';

class GenreGrid extends StatelessWidget {
  final List<GenreModel> genre;
  final String mediaType;

  final SearchStore _searchStore = GetIt.I<SearchStore>();

  GenreGrid({this.genre, @required this.mediaType});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      crossAxisCount: 2,
      childAspectRatio: 1.7,
      padding: EdgeInsets.only(bottom: 30, top: 20),
      children: List.generate(genre.length, (index) {
        return GestureDetector(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      mediaType == 'Movie'
                          ? 'images/genre/movie/${genre[index].name}.jpg'
                          : 'images/genre/serie/${genre[index].name}.jpg',
                      //'images/not-found.png'
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.4),
                      ],
                      stops: [
                        0.0,
                        1.0
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: CustomText(
                  text: genre[index].name,
                  corText: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          onTap: () {
            print(genre[index].id);
            if (mediaType == 'Movie') {
              _searchStore.fetchMovieGenre(genre[index].id);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ResultSearchMovies(
                    titleGenre: genre[index].name,
                  ),
                ),
              );
            } else {
              _searchStore.fetchSerieGenre(genre[index].id);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ResultSearchSeries(
                    titleGenre: genre[index].name,
                  ),
                ),
              );
            }
          },
        );
      }),
    );
  }
}
