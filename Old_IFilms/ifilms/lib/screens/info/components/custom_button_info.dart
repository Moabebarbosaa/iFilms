import 'package:flutter/material.dart';
import 'package:ifilms/components/custom_text.dart';

class CustomButtonInfo extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final Color iconColor;

  CustomButtonInfo({this.title, this.icon, this.onTap, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 20),
        child: Row(
          children: [
            Icon(
              icon,
              color: iconColor == null ? Colors.red : iconColor,
              size: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: CustomText(
                text: title,
                corText: Colors.white,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
