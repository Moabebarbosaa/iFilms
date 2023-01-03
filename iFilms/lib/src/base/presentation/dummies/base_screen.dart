import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class BaseScreen extends ConsumerWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1D21),
      appBar: AppBar(
        backgroundColor: const Color(0xFF12151D),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'i',
              style: TextStyle(
                color: Color(0xFFE21938),
              ),
            ),
            Text(
              'Films',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.amber,
          child: const Text('IFilms'),
        ),
      ),
    );
  }
}
