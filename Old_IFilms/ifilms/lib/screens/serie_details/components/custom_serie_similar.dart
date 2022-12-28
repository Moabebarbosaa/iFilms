import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/custom_poster.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/components/custom_topic.dart';
import 'package:ifilms/models/serie/serie_model.dart';
import 'package:ifilms/stores/serie_detail_store.dart';

import '../../serie_details/serie_detail_screen.dart';

class CustomSerieSimilar extends StatelessWidget {
  CustomSerieSimilar({@required this.similar});

  final List<SerieModel> similar;

  final SerieDetailStore _serieDetailController = GetIt.I<SerieDetailStore>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTopic(
          title: 'Séries Similares',
          leftPadding: 20,
          topPadding: 30,
          rightPadding: 0,
          bottomPadding: 0,
        ),
        SizedBox(
          height: 330,
          child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: similar.length,
              padding: EdgeInsets.only(left: 15),
              itemBuilder: (BuildContext context, int index) {
                final obra = similar[index];
                return Container(
                  width: 160,
                  padding: const EdgeInsets.only(right: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: CustomPoster(
                          posterPath: obra.posterPath,
                          height: 204,
                          width: 138,
                          boxShape: null,
                        ),
                        onTap: () {
                          print("ID: ${obra.id}");
                          _serieDetailController.setPage(0);
                          Navigator.of(context).pop();
                          _serieDetailController.loadSerieScreen(obra.id);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => SerieDetailScreen(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        text: obra.title,
                        corText: Colors.white,
                        fontSize: 15,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CustomText(
                        text: obra.releaseDate.year.toString(),
                        corText: Colors.grey,
                        fontSize: 15,
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
