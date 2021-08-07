import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/screens/home/home_screen.dart';
import 'package:ifilms/screens/in_theaters/in_theaters_screen.dart';
import 'package:ifilms/screens/info/info_screen.dart';
import 'package:ifilms/screens/offline/offline_screen.dart';
import 'package:ifilms/screens/search/search_screen.dart';
import 'package:ifilms/stores/connectivity_store.dart';
import 'package:ifilms/stores/page_store.dart';
import 'package:mobx/mobx.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageController pageController = PageController();
  final PageStore pageStore = GetIt.I<PageStore>();
  final ConnectivityStore connectivityStore = GetIt.I<ConnectivityStore>();

  @override
  void initState() {
    super.initState();

    reaction((_) => pageStore.page,
        (page) => pageController.jumpToPage(int.parse(page.toString())));

    autorun((_) {
      if (!connectivityStore.connected) {
        Future.delayed(Duration(milliseconds: 50)).then((value) {
          showDialog(context: context, builder: (_) => OfflineScreen());
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Observer(builder: (_) {
      return Scaffold(
        backgroundColor: Color(0xFF1B1D21),
        appBar: pageStore.page == 2
            ? null
            : AppBar(
                backgroundColor: Color(0xFF12151D),
                centerTitle: pageStore.page == 0 ||
                        pageStore.page == 1 ||
                        pageStore.page == 3
                    ? true
                    : false,
                title: pageStore.page == 0 ||
                        pageStore.page == 1 ||
                        pageStore.page == 3
                    ? Row(
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
                      )
                    : CustomText(
                        text: pageStore.title,
                        corText: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
              ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            HomeScreen(),
            InTheatersScreen(),
            SearchScreen(),
            InfoScreen()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: pageStore.page,
          onTap: (p) {
            pageController.animateToPage(p,
                duration: Duration(milliseconds: 1), curve: Curves.easeOut);
            pageStore.page = p;
            if (p == 0)
              pageStore.title = 'iFilms';
            else if (p == 1)
              pageStore.title = 'Em Cartaz';
            else if (p == 2)
              pageStore.title = 'Buscar';
            else
              pageStore.title = 'iFilms';
          },
          iconSize: 25,
          selectedFontSize: 12,
          selectedItemColor: Color(0xFFE21938),
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
              backgroundColor: Color(0xFF12151D),
            ),
            BottomNavigationBarItem(
              label: 'Em Cartaz',
              icon: Icon(Icons.calendar_today_sharp),
              backgroundColor: Color(0xFF12151D),
            ),
            BottomNavigationBarItem(
              label: 'Buscar',
              icon: Icon(Icons.search),
              backgroundColor: Color(0xFF12151D),
            ),
            BottomNavigationBarItem(
              label: 'Sobre',
              icon: Icon(Icons.info_outline),
              backgroundColor: Color(0xFF12151D),
            ),
          ],
        ),
      );
    });
  }
}
