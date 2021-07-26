import 'package:flutter/material.dart';
import 'package:ifilms/components/custom_poster.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/components/custom_topic.dart';
import 'package:ifilms/models/movie_serie/cast_model.dart';

class CustomCast extends StatelessWidget {
  final CastModel castModel;

  CustomCast({@required this.castModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTopic(
          title: 'Elenco',
          leftPadding: 20,
          rightPadding: 20,
          bottomPadding: 0,
          topPadding: 10,
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 140,
          child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: castModel.cast.length,
              padding: EdgeInsets.only(left: 15),
              itemBuilder: (BuildContext context, int index) {
                final actor = castModel.cast[index];
                return Container(
                  width: 100,
                  padding: EdgeInsets.only(right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomPoster(
                        posterPath: actor.profilePath,
                        height: 80,
                        width: 80,
                        boxShape: BoxShape.circle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: [
                          CustomText(
                            text: actor.name,
                            corText: Colors.grey,
                            fontSize: 15,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
