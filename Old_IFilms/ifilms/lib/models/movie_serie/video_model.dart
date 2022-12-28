class VideoModel {
  String id;
  String iso6391;
  String iso31661;
  String key;
  String name;
  String site;
  int size;
  String type;

  VideoModel(
      {this.id,
      this.iso6391,
      this.iso31661,
      this.key,
      this.name,
      this.site,
      this.size,
      this.type});

  factory VideoModel.fromMap(Map<String, dynamic> json) {
    return VideoModel(
      id: json['id'],
      key: json['key'],
      name: json['name'],
      type: json['type'],
      site: json['site'],
    );
  }

  @override
  String toString() {
    return 'YoutubeModel{id: $id, key: $key, name: $name, site: $site, type: $type}';
  }
}
