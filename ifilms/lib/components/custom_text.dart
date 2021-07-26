import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {this.corText,
      this.text,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      this.textDecoration,
      this.overflow,
      this.maxLines,
      this.textDirection});

  final Color corText;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextDecoration textDecoration;
  final TextOverflow overflow;
  final int maxLines;
  final TextDirection textDirection;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        color: corText,
        fontSize: fontSize,
        //fontFamily: 'opensans',
        fontWeight: fontWeight,
        decoration: textDecoration,
      ),
      overflow: overflow,
    );
  }
}
