import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/custom_topic.dart';
import 'package:ifilms/stores/movie_detail_store.dart';
import 'package:ifilms/stores/serie_detail_store.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CustomTrailer extends StatelessWidget {
  final String type;
  final MovieDetailStore _movieDetailController = GetIt.I<MovieDetailStore>();
  final SerieDetailStore _serieDetailController = GetIt.I<SerieDetailStore>();

  CustomTrailer({@required this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 20,
      ),
      child: Column(
        children: [
          CustomTopic(
            title: 'Trailer',
            leftPadding: 20,
            bottomPadding: 20,
            topPadding: 0,
            rightPadding: 20,
          ),
          YoutubePlayer(
            controller: type == 'serie'
                ? _serieDetailController.youtubeController
                : _movieDetailController.youtubeController,
            showVideoProgressIndicator: true,
            progressColors: ProgressBarColors(
              playedColor: Color(0xFFE21938),
              backgroundColor: Colors.white,
              bufferedColor: Colors.red.shade200,
              handleColor: Color(0xFFE21938),
            ),
            bottomActions: [
              CurrentPosition(),
              ProgressBar(
                isExpanded: true,
                colors: ProgressBarColors(
                  playedColor: Color(0xFFE21938),
                  backgroundColor: Colors.white,
                  bufferedColor: Colors.red.shade200,
                  handleColor: Color(0xFFE21938),
                ),
              ),
              RemainingDuration()
            ],
            onReady: () {
              print("Player is ready.");
            },
          ),
        ],
      ),
    );
  }
}
