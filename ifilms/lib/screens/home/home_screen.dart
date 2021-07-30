import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:ifilms/components/circular_progress.dart';
import 'package:ifilms/components/custom_topic.dart';
import 'package:ifilms/screens/home/components/custom_carousel.dart';
import 'package:ifilms/screens/home/components/custom_top20.dart';
import 'package:ifilms/screens/home/components/trending_movie.dart';
import 'package:ifilms/stores/popular_store.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PopularStore _popularController = GetIt.I<PopularStore>();

  final BannerAd myBanner = BannerAd(
    adUnitId: Platform.isAndroid
        ? 'ca-app-pub-3122961190589601/4696879324' //ok
        : 'ca-app-pub-3940256099942544/2934735716',
    size: AdSize.banner,
    request: AdRequest(),
    listener: AdListener(),
  );

  @override
  void initState() {
    super.initState();
    myBanner.load();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (_popularController.loadingPopularScreen) {
        return CircularProgress();
      } else {
        return ListView(
          children: [
            TrendingMovie(trendingMovie: _popularController.trendingMovie),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomTopic(
                  title: 'Filmes Populares',
                  topPadding: 40,
                  leftPadding: 20,
                  rightPadding: 20,
                  bottomPadding: 10,
                ),
                CustomTop20(),
              ],
            ),
            CustomCarousel(
              obras: _popularController.movies,
              type: 'movie',
            ),
            Container(
              alignment: Alignment.center,
              child: AdWidget(ad: myBanner),
              width: myBanner.size.width.toDouble(),
              height: myBanner.size.height.toDouble(),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomTopic(
                  title: 'Séries Populares',
                  topPadding: 20,
                  leftPadding: 20,
                  rightPadding: 20,
                  bottomPadding: 10,
                ),
                CustomTop20(),
              ],
            ),
            CustomCarousel(
              obras: _popularController.series,
              type: 'serie',
            ),
          ],
        );
      }
    });
  }
}
