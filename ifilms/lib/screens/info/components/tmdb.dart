import 'package:flutter/material.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:url_launcher/url_launcher.dart';

class TMDB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: 'Dados fornecidos pela:',
            corText: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.only(
                left: size.width * 0.2, right: size.width * 0.2),
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/tmdb.png'),
              ),
            ),
          ),
        ],
      ),
      onTap: () async {
        final url = 'https://www.themoviedb.org/';
        print('HOMEPAGE: $url');
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    );
  }
}
