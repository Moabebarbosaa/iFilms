import 'dart:convert';

class ProductionCountryModel {
  final String iso31661;
  final String name;

  ProductionCountryModel({
    this.iso31661,
    this.name,
  });

  factory ProductionCountryModel.fromJson(String str) =>
      ProductionCountryModel.fromMap(json.decode(str));

  factory ProductionCountryModel.fromMap(Map<String, dynamic> json) =>
      ProductionCountryModel(
        iso31661: json["iso_3166_1"],
        name: json["name"],
      );

  @override
  String toString() {
    return 'ProductionCountryModel{iso31661: $iso31661, name: $name}';
  }
}
