import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:ifilms/components/circular_progress.dart';
import 'package:ifilms/components/custom_topic.dart';
import 'package:ifilms/screens/search/components/genre_buttons.dart';
import 'package:ifilms/screens/search/components/genre_grid.dart';
import 'package:ifilms/screens/search/components/search_text_field.dart';
import 'package:ifilms/stores/payment_store.dart';
import 'package:ifilms/stores/search_store.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final SearchStore _searchStore = GetIt.I<SearchStore>();
  final PaymentStore paymentStore = GetIt.I<PaymentStore>();

  final BannerAd searchBanner = BannerAd(
    adUnitId: Platform.isAndroid
        ? 'ca-app-pub-3122961190589601/8826091367' //ok
        : 'ca-app-pub-3122961190589601/8826091367',
    size: AdSize.banner,
    request: AdRequest(),
    listener: BannerAdListener(),
  );

  @override
  void initState() {
    super.initState();
    searchBanner.load();
  }

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
                        for (var prod in paymentStore.products)
                          if (paymentStore.hasPurchased(prod.id) != null) ...[
                            Container()
                          ] else ...[
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              alignment: Alignment.center,
                              child: AdWidget(ad: searchBanner),
                              width: searchBanner.size.width.toDouble(),
                              height: searchBanner.size.height.toDouble(),
                            )
                          ],
                        _searchStore.page == 0
                            ? GenreGrid(
                                mediaType: 'Movie',
                                genre: _searchStore.movieGenres.moviesGenre)
                            : GenreGrid(
                                mediaType: 'Serie',
                                genre: _searchStore.serieGenres.seriesGenre),
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
