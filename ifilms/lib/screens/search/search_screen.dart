import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/circular_progress.dart';
import 'package:ifilms/components/custom_topic.dart';
import 'package:ifilms/screens/search/components/genre_buttons.dart';
import 'package:ifilms/screens/search/components/genre_grid.dart';
import 'package:ifilms/screens/search/components/search_text_field.dart';
import 'package:ifilms/stores/search_store.dart';

class SearchScreen extends StatelessWidget {
  final SearchStore _searchStore = GetIt.I<SearchStore>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Observer(builder: (_) {
          return Column(
            children: [
              SearchTextField(),
              _searchStore.loadingSearchScreen == false
                  ? Column(
                      children: [
                        CustomTopic(
                          title: 'Gêneros',
                          leftPadding: 0,
                          bottomPadding: 0,
                          topPadding: 20,
                          rightPadding: 0,
                        ),
                        GenreButtons(),
                        _searchStore.page == 0
                            ? GenreGrid(
                                mediaType: 'Movie',
                                genre: _searchStore.movieGenres.moviesGenre)
                            : GenreGrid(
                                mediaType: 'Serie',
                                genre: _searchStore.serieGenres.seriesGenre)
                      ],
                    )
                  : Container(
                      height: MediaQuery.of(context).size.height - 100,
                      child: CircularProgress())
            ],
          );
        }),
      ),
    );
  }
}
