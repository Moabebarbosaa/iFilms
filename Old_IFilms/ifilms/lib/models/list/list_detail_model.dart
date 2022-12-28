import 'package:ifilms/models/list/detail_model.dart';

class ListDetailModel {
  final List<DetailModel> mediaDetails;

  ListDetailModel({
    this.mediaDetails,
  });

  factory ListDetailModel.fromMap(Map<String, dynamic> json) => ListDetailModel(
        mediaDetails: List<DetailModel>.from(json["results"].map((x) {
          return DetailModel.fromMap(x);
        })),
      );

  @override
  String toString() {
    return 'ListDetailModel{mediaDetails: $mediaDetails}';
  }
}
