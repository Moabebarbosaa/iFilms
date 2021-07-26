import 'package:ifilms/models/serie/episode_model.dart';

class SeasonsEpisodeModel {
  final List<EpisodeModel> episodes;

  SeasonsEpisodeModel({this.episodes});

  factory SeasonsEpisodeModel.fromMap(Map<String, dynamic> json) {
    return SeasonsEpisodeModel(
      episodes: List<EpisodeModel>.from(
          json["episodes"].map((x) => EpisodeModel.fromMap(x))),
    );
  }

  @override
  String toString() {
    return 'SeasonsEpisodeModel{episodes: $episodes}';
  }
}
