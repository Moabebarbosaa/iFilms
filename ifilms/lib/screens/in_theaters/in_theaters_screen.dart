import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/circular_progress.dart';
import 'package:ifilms/screens/in_theaters/components/in_theaters_buttons.dart';
import 'package:ifilms/screens/in_theaters/components/in_theaters_movies.dart';
import 'package:ifilms/screens/in_theaters/components/up_coming_movies.dart';
import 'package:ifilms/stores/in_theaters_store.dart';

class InTheatersScreen extends StatelessWidget {
  final InTheatersStore _inTheatersStore = GetIt.I<InTheatersStore>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Observer(builder: (_) {
        if (_inTheatersStore.loadingInTheatersScreen) {
          return CircularProgress();
        } else {
          return Column(
            children: [
              InTheatersButtons(),
              _inTheatersStore.page == 0
                  ? InTheatersMovies()
                  : UpComingMovies(),
            ],
          );
        }
      }),
    );
  }
}
