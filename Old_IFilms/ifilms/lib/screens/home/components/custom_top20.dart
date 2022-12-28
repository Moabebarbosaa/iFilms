import 'package:flutter/material.dart';
import 'package:ifilms/components/custom_text.dart';

class CustomTop20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15, bottom: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFE21938),
        ),
      ),
      child: CustomText(
        text: 'TOP 20',
        corText: Color(0xFFE21938),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
