class DetailModel {
  final int id;
  final String title;
  final String posterPath;
  final String overview;
  final dynamic voteAverage;
  final String releaseDate;
  final String firstAirDate;
  final String mediaType;

  DetailModel(
      {this.id,
      this.title,
      this.posterPath,
      this.overview,
      this.voteAverage,
      this.releaseDate,
      this.firstAirDate,
      this.mediaType});

  factory DetailModel.fromMap(Map<String, dynamic> json) {
    return DetailModel(
        id: json['id'],
        title: json['title'] == null ? json['name'] : json['title'],
        posterPath: json['poster_path'],
        overview: json['overview'],
        voteAverage: json['vote_average'],
        releaseDate: json['release_date'],
        firstAirDate: json['first_air_date'],
        mediaType: json['media_type']);
  }

  @override
  String toString() {
    return 'DetailModel{id: $id, title: $title, posterPath: $posterPath, overview: $overview, voteAverage: $voteAverage, releaseDate: $releaseDate, firstAirDate: $firstAirDate, mediaType: $mediaType}';
  }
}
