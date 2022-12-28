import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:ifilms/screens/info/components/custom_button_info.dart';
import 'package:ifilms/screens/info/components/tmdb.dart';
import 'package:share/share.dart';

class InfoScreen extends StatelessWidget {
  void _share(BuildContext context) {
    final RenderBox box = context.findRenderObject();
    Share.share(
        "Baixe IFilms na PlayStore.\nhttps://play.google.com/store/apps/details?id=br.com.ifilms",
        subject: 'iFilms',
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              CustomButtonInfo(
                title: 'Recomendar o aplicativo',
                icon: Icons.share,
                onTap: () {
                  _share(context);
                },
              ),
              CustomButtonInfo(
                title: 'Reportar um problema',
                icon: Icons.report_problem_rounded,
                onTap: () async {
                  final Email email = Email(
                    body: '',
                    subject: 'iFilms - Reportar um problema',
                    recipients: ['moabebarbosaa@gmail.com'],
                    isHTML: false,
                  );
                  await FlutterEmailSender.send(email);
                },
              ),
            ],
          ),
          TMDB()
        ],
      ),
    );
  }
}
