import 'package:flutter/material.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/models/serie/serie_model.dart';

class CustomSerieHead extends StatelessWidget {
  final SerieModel serieModel;

  CustomSerieHead({@required this.serieModel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.transparent],
            ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height - 20));
          },
          blendMode: BlendMode.dstIn,
          child: Container(
            height: size.width * 0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: serieModel.backdropPath == null
                    ? AssetImage('images/not-found.png')
                    : NetworkImage(
                        'https://image.tmdb.org/t/p/w500/' +
                            serieModel.backdropPath,
                      ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: SafeArea(
            top: true,
            child: BackButton(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: size.width * 0.4),
          child: CustomText(
            text: serieModel.title,
            fontSize: 35,
            corText: Colors.white,
            maxLines: 2,
            textAlign: TextAlign.center,
            //textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
