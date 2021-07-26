import 'package:flutter/material.dart';
import 'package:ifilms/components/custom_text.dart';

class CustomSubtitle extends StatelessWidget {
  final int index;
  final String title;
  final DateTime releaseDate;

  CustomSubtitle(
      {@required this.index, @required this.title, @required this.releaseDate});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          padding: index >= 9
              ? EdgeInsets.all(5)
              : EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                  left: 9.5,
                  right: 9.5,
                ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFE21938),
            ),
          ),
          child: CustomText(
            text: (index + 1).toString(),
            corText: Color(0xFFE21938),
            fontWeight: FontWeight.bold,
          ),
        ),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: title,
                corText: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.start,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 3,
              ),
              CustomText(
                text: releaseDate == null
                    ? 'Em breve'
                    : releaseDate.year.toString(),
                corText: Colors.grey,
                fontSize: 13,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
