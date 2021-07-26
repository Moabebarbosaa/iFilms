import 'dart:convert';

class NetworksModel {
  final String name;
  final int id;
  final String logoPath;
  final String originCountry;

  NetworksModel({this.name, this.id, this.logoPath, this.originCountry});

  factory NetworksModel.fromJson(String str) =>
      NetworksModel.fromJson(json.decode(str));

  factory NetworksModel.fromMap(Map<String, dynamic> json) => NetworksModel(
      name: json['name'],
      id: json['id'],
      logoPath: json['logo_path'] == null ? null : json['logo_path'],
      originCountry: json['origin_country']);
}
