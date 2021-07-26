import 'package:ifilms/models/genre/genre_model.dart';

class SerieGenreModel {
  final List<GenreModel> seriesGenre;

  SerieGenreModel({this.seriesGenre});

  factory SerieGenreModel.fromMap(Map<String, dynamic> json) => SerieGenreModel(
        seriesGenre: List<GenreModel>.from(
            json["genres"].map((x) => GenreModel.fromMap(x))),
      );
}
