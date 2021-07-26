import 'package:flutter/material.dart';

class CustomHead extends StatelessWidget {
  CustomHead({@required this.backdropPath});

  final String backdropPath;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      child: Stack(
        children: [
          Container(
            height: size.width * 0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: backdropPath == null
                    ? AssetImage('images/not-found.png')
                    : NetworkImage(
                        'https://image.tmdb.org/t/p/w500/' + backdropPath,
                      ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 40,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xFF1B1D21),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
            ),
          ),
          SafeArea(
            child: BackButton(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
