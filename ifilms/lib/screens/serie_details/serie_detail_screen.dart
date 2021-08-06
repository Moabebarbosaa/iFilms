import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/circular_progress.dart';
import 'package:ifilms/screens/movie_details/components/custom_buttons.dart';
import 'package:ifilms/screens/movie_details/components/custom_cast.dart';
import 'package:ifilms/screens/serie_details/components/custom_serie_details.dart';
import 'package:ifilms/screens/serie_details/components/custom_serie_head.dart';
import 'package:ifilms/screens/serie_details/components/custom_serie_seasons.dart';
import 'package:ifilms/screens/serie_details/components/custom_serie_similar.dart';
import 'package:ifilms/stores/serie_detail_store.dart';

class SerieDetailScreen extends StatelessWidget {
  final SerieDetailStore _serieController = GetIt.I<SerieDetailStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1D21),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Observer(builder: (_) {
          if (_serieController.loadingSerieDetailScreen) {
            return Container(
                height: MediaQuery.of(context).size.height,
                child: CircularProgress());
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSerieHead(serieModel: _serieController.serieModel),
                CustomSerieDetails(serieModel: _serieController.serieModel),
                CustomButtons(homepage: _serieController.serieModel.homepage),
                CustomSerieTabSeasons(),
                SizedBox(height: 20),
                CustomCast(castModel: _serieController.castModel),
                _serieController.similarSerieModel.series.isEmpty
                    ? Container()
                    : CustomSerieSimilar(
                        similar: _serieController.similarSerieModel.series,
                      ),
              ],
            );
          }
        }),
      ),
    );
  }
}
