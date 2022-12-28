import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:ifilms/components/circular_progress.dart';
import 'package:ifilms/screens/in_theaters/components/in_theaters_buttons.dart';
import 'package:ifilms/screens/in_theaters/components/in_theaters_movies.dart';
import 'package:ifilms/screens/in_theaters/components/up_coming_movies.dart';
import 'package:ifilms/stores/in_theaters_store.dart';

class InTheatersScreen extends StatefulWidget {
  @override
  _InTheatersScreenState createState() => _InTheatersScreenState();
}

class _InTheatersScreenState extends State<InTheatersScreen> {
  final InTheatersStore _inTheatersStore = GetIt.I<InTheatersStore>();

  final BannerAd inTheatersBanner = BannerAd(
    adUnitId: Platform.isAndroid
        ? 'ca-app-pub-3122961190589601/8794301776'
        : 'ca-app-pub-3122961190589601/8794301776',
    size: AdSize.banner,
    request: AdRequest(),
    listener: BannerAdListener(),
  );

  @override
  void initState() {
    super.initState();
    inTheatersBanner.load();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Observer(builder: (_) {
        if (_inTheatersStore.loadingInTheatersScreen) {
          return CircularProgress();
        } else {
          return Column(
            children: [
              InTheatersButtons(),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                child: AdWidget(ad: inTheatersBanner),
                width: inTheatersBanner.size.width.toDouble(),
                height: inTheatersBanner.size.height.toDouble(),
              ),
              _inTheatersStore.page == 0
                  ? InTheatersMovies()
                  : UpComingMovies(),
            ],
          );
        }
      }),
    );
  }
}
