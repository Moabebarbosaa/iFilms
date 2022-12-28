import 'package:flutter/material.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomButtons extends StatelessWidget {
  final String homepage;

  CustomButtons({@required this.homepage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
      child: homepage == ''
          ? Container()
          : ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                //primary: Color(0xFF12151D),
                primary: Colors.white,
                onPrimary: Colors.black,
                onSurface: Colors.grey,
                elevation: 10,
              ),
              label: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    child: CustomText(
                      text: 'Onde assistir',
                      fontSize: 16,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              icon: Icon(
                Icons.play_circle_fill,
                color: Color(0xFFE21938),
              ),
              onPressed: () async {
                final url = homepage;
                print('HOMEPAGE: $url');
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
    );
  }
}
