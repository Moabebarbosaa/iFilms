import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1D21),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          Container(
            height: 120.0,
            width: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('images/ifilms.png'),
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }
}
