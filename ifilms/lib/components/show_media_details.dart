import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ifilms/models/list/detail_model.dart';
import 'package:intl/intl.dart';
import 'custom_poster.dart';
import 'custom_text.dart';

class ShowMediaDetails extends StatelessWidget {
  final DetailModel media;
  ShowMediaDetails({this.media});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 250,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Stack(alignment: Alignment.topLeft, children: [
        Positioned(
          bottom: 20,
          child: Container(
            height: 250 * 0.75,
            width: size.width - 40,
            decoration: BoxDecoration(
              color: Color(0xFF12151D),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: (250 * 0.6) + 20, top: 15, right: 10, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: media.title,
                    corText: Colors.white,
                    fontSize: 17,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.bold,
                    maxLines: 2,
                  ),
                  media.overview == ''
                      ? Container()
                      : CustomText(
                          text: media.overview,
                          corText: Colors.grey,
                          fontSize: 13,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                        ),
                  media.releaseDate == null
                      ? Container()
                      : CustomText(
                          text:
                              'Lançamento: ${media.releaseDate.substring(8, 10)}/${media.releaseDate.substring(5, 7)}/${media.releaseDate.substring(0, 4)}',
                          corText: Colors.white,
                          fontSize: 13,
                        ),
                  media.voteAverage == 0
                      ? Container()
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RatingBarIndicator(
                              unratedColor: Colors.white24,
                              rating: media.voteAverage / 2,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 20,
                              direction: Axis.horizontal,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomText(
                              text: media.voteAverage.toString(),
                              corText: Colors.yellow,
                              fontSize: 15,
                            )
                          ],
                        ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 10,
          child: CustomPoster(
            posterPath: media.posterPath,
            height: 250 * 0.85,
            width: 250 * 0.6,
            boxShape: null,
          ),
        ),
      ]),
    );
  }
}
