import 'package:flutter/material.dart';
import 'package:ifilms/components/custom_text.dart';

class CustomOverview extends StatelessWidget {
  final String overview;

  CustomOverview({@required this.overview});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
      child: CustomText(
        text: overview,
        corText: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 15,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
