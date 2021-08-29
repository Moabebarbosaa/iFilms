import 'package:flutter/material.dart';
import 'package:ifilms/components/custom_poster.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/components/custom_topic.dart';
import 'package:ifilms/models/movie_serie/youtube_model.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomTrailer extends StatelessWidget {
  final YoutubeModel youtubeModel;
  final String photo;

  CustomTrailer({this.youtubeModel, this.photo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTopic(
          title: 'Trailer',
          leftPadding: 20,
          topPadding: 10,
          rightPadding: 0,
          bottomPadding: 0,
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: youtubeModel.videos.length,
              padding: EdgeInsets.only(left: 15),
              itemBuilder: (BuildContext context, int index) {
                final trailer = youtubeModel.videos[index];
                return Container(
                  width: 160,
                  padding: const EdgeInsets.only(right: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        child: Stack(
                          children: [
                            CustomPoster(
                              posterPath: photo,
                              height: 204,
                              width: 138,
                              boxShape: null,
                            ),
                            Positioned(
                              bottom: 67.5,
                              left: 42.5,
                              child: Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 70,
                              left: 45,
                              child: Icon(
                                Icons.play_circle_fill,
                                size: 50,
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                        onTap: () async {
                          final url = 'https://www.youtube.com/watch?v=';
                          if (await canLaunch(url)) {
                            await launch(url + trailer.key);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        text: trailer.name,
                        corText: Colors.white,
                        fontSize: 15,
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}

// onPressed: () async {
// final url = homepage;
// print('HOMEPAGE: $url');
// if (await canLaunch(url)) {
// await launch(url);
// } else {
// throw 'Could not launch $url';
// }
// },
