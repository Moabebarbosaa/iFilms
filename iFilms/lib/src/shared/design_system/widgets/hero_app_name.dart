import 'package:flutter/material.dart';

import '../assets/flutter_base_images.dart';

class HeroAppName extends StatefulWidget {
  const HeroAppName({Key? key}) : super(key: key);

  @override
  _HeroAppNameState createState() => _HeroAppNameState();
}

class _HeroAppNameState extends State<HeroAppName> {
  final heroTag = 'AppNameHeroTag';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Hero(
      tag: heroTag,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            FlutterBaseImages.logoAndName,
          ),
          Text(
            'iFilms',
            style: textTheme.bodyText1?.copyWith(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
