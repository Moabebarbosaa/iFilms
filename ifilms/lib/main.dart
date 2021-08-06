import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:ifilms/screens/base/base_screen.dart';
import 'package:ifilms/stores/connectivity_store.dart';
import 'package:ifilms/stores/in_theaters_store.dart';
import 'package:ifilms/stores/movie_detail_store.dart';
import 'package:ifilms/stores/popular_store.dart';
import 'package:ifilms/stores/page_store.dart';
import 'package:ifilms/stores/payment_store.dart';
import 'package:ifilms/stores/search_store.dart';
import 'package:ifilms/stores/serie_detail_store.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

void main() async {
  InAppPurchaseConnection.enablePendingPurchases();
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
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
  GetIt.I.registerSingleton(PaymentStore());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    GetIt.I<PaymentStore>().initialize();
    super.initState();
  }

  @override
  void dispose() {
    GetIt.I<PaymentStore>().subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BaseScreen(),
    );
  }
}
