import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/stores/connectivity_store.dart';
import 'package:mobx/mobx.dart';

class OfflineScreen extends StatefulWidget {
  @override
  _OfflineScreenState createState() => _OfflineScreenState();
}

class _OfflineScreenState extends State<OfflineScreen> {
  final ConnectivityStore connectivityStore = GetIt.I<ConnectivityStore>();

  @override
  void initState() {
    super.initState();
    when((_) => connectivityStore.connected, () {
      Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: WillPopScope(
        onWillPop: () => Future.value(false),
        child: Scaffold(
          backgroundColor: Color(0xFF1B1D21),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xFF12151D),
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'i',
                  corText: Color(0xFFE21938),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: 'Films',
                  corText: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Center(
                  child: Text(
                    'Sem conexão com a internet!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                ),
              ),
              Icon(
                Icons.cloud_off,
                color: Colors.white,
                size: 150,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Por favor, verifique a sua conexão com a internet para '
                  'continuar utilizando o app.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
