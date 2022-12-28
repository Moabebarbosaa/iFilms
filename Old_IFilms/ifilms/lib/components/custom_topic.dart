import 'package:flutter/material.dart';
import 'package:ifilms/components/custom_text.dart';

class CustomTopic extends StatelessWidget {
  final String title;
  final double topPadding;
  final double bottomPadding;
  final double leftPadding;
  final double rightPadding;

  CustomTopic({
    @required this.title,
    @required this.leftPadding,
    @required this.bottomPadding,
    @required this.topPadding,
    @required this.rightPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: topPadding, left: leftPadding, bottom: bottomPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 4,
            height: 30,
            color: Color(0xFFE21938),
          ),
          SizedBox(
            width: 5,
          ),
          CustomText(
            text: title,
            corText: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
