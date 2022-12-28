import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/models/serie/serie_model.dart';

class CustomSerieDetails extends StatelessWidget {
  final SerieModel serieModel;

  CustomSerieDetails({@required this.serieModel});
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              RatingBarIndicator(
                unratedColor: Colors.white24,
                rating: serieModel.voteAverage / 2,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 20,
                direction: Axis.horizontal,
              ),
              CustomText(
                text: '   •   ',
                corText: Colors.white,
                fontSize: 15,
              ),
              CustomText(
                text: serieModel.releaseDate.year.toString(),
                corText: Colors.white,
                fontSize: 15,
              ),
              CustomText(
                text: '   •   ',
                corText: Colors.white,
                fontSize: 15,
              ),
              Expanded(
                child: CustomText(
                  text: serieModel.numberOfSeasons > 1
                      ? serieModel.numberOfSeasons.toString() + '  Temporadas'
                      : serieModel.numberOfSeasons.toString() + '  Temporada',
                  corText: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: serieModel.overview,
            corText: Colors.white,
            textAlign: TextAlign.justify,
            fontSize: 15,
          ),
        ],
      ),
    );
  }
}
