import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ifilms/components/custom_poster.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/models/movie/movie_model.dart';

class CustomDetails extends StatelessWidget {
  final MovieModel movieModel;

  CustomDetails({@required this.movieModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            children: [
              CustomPoster(
                posterPath: movieModel.posterPath,
                height: 214,
                width: 158,
                boxShape: null,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: movieModel.title,
                        corText: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RatingBarIndicator(
                            unratedColor: Colors.white24,
                            rating: movieModel.voteAverage / 2,
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
                            text: movieModel.voteAverage.toString(),
                            corText: Colors.grey,
                            fontSize: 15,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        text: movieModel.genres
                            .toString()
                            .replaceAll('[', '')
                            .replaceAll(']', '')
                            .replaceAll(', ', ' • '),
                        corText: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomText(
                              text: movieModel.runtime.toString() + ' min •',
                              corText: Colors.grey,
                              textAlign: TextAlign.end,
                            ),
                          ),
                          Expanded(
                            child: CustomText(
                              text:
                                  ' ' + movieModel.releaseDate.year.toString(),
                              corText: Colors.grey,
                              fontWeight: FontWeight.w400,
                              maxLines: 2,
                              fontSize: 15,
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
