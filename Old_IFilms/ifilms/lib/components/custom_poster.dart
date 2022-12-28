import 'package:flutter/material.dart';

class CustomPoster extends StatelessWidget {
  final String posterPath;
  final double width;
  final double height;
  final BoxShape boxShape;

  CustomPoster({
    @required this.posterPath,
    @required this.height,
    @required this.width,
    @required this.boxShape,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        shape: boxShape == null ? BoxShape.rectangle : boxShape,
        borderRadius: boxShape == null ? BorderRadius.circular(8) : null,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: posterPath == null
              ? AssetImage('images/not-found.png')
              : NetworkImage(
                  'https://image.tmdb.org/t/p/w220_and_h330_face/' + posterPath,
                ),
        ),
      ),
    );
  }
}
