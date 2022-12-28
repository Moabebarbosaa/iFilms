import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/custom_poster.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/components/custom_topic.dart';
import 'package:ifilms/models/movie/movie_model.dart';
import 'package:ifilms/stores/movie_detail_store.dart';
import '../movie_details_screen.dart';

class CustomRecommend extends StatelessWidget {
  CustomRecommend({@required this.similar});

  final List<MovieModel> similar;

  final MovieDetailStore _movieDetailController = GetIt.I<MovieDetailStore>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTopic(
          title: 'Filmes Similares',
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
              itemCount: similar.length,
              padding: EdgeInsets.only(left: 15),
              itemBuilder: (BuildContext context, int index) {
                final obra = similar[index];
                return Container(
                  width: 160,
                  padding: const EdgeInsets.only(right: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        child: CustomPoster(
                          posterPath: obra.posterPath,
                          height: 204,
                          width: 138,
                          boxShape: null,
                        ),
                        onTap: () {
                          Navigator.of(context).pop();
                          _movieDetailController.loadMovieScreen(obra.id);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => MovieDetailsScreen(),
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
