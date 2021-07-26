import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/screens/base/base_screen.dart';
import 'package:ifilms/screens/in_theaters/components/in_theaters_buttons.dart';
import 'package:ifilms/stores/connectivity_store.dart';
import 'package:ifilms/stores/in_theaters_store.dart';
import 'package:ifilms/stores/movie_detail_store.dart';
import 'package:ifilms/stores/popular_store.dart';
import 'package:ifilms/stores/page_store.dart';
import 'package:ifilms/stores/search_store.dart';
import 'package:ifilms/stores/serie_detail_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocators();
  runApp(MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(ConnectivityStore());
  GetIt.I.registerSingleton(PageStore());
  GetIt.I.registerSingleton(PopularStore());
  GetIt.I.registerSingleton(MovieDetailStore());
  GetIt.I.registerSingleton(SerieDetailStore());
  GetIt.I.registerSingleton(InTheatersStore());
  GetIt.I.registerSingleton(SearchStore());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BaseScreen(),
      // home: ErrorScreen(),
    );
  }
}
