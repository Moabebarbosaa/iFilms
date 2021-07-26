import 'package:ifilms/models/movie_serie/video_model.dart';

class YoutubeModel {
  final List<VideoModel> videos;

  YoutubeModel({this.videos});

  factory YoutubeModel.fromMap(Map<String, dynamic> json) => YoutubeModel(
        videos: List<VideoModel>.from(
            json["results"].map((x) => VideoModel.fromMap(x))),
      );
}
