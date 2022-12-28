import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/stores/in_theaters_store.dart';

class InTheatersButtons extends StatelessWidget {
  final InTheatersStore _inTheatersStore = GetIt.I<InTheatersStore>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
      child: Observer(builder: (_) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildButton(
                title: 'Em Cartaz', page: 0, inTheatersStore: _inTheatersStore),
            SizedBox(width: 10),
            _buildButton(
                title: 'Em Breve', page: 1, inTheatersStore: _inTheatersStore),
          ],
        );
      }),
    );
  }
}

Widget _buildButton({String title, int page, InTheatersStore inTheatersStore}) {
  return Expanded(
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            inTheatersStore.page == page ? Colors.red : Colors.grey),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
      child: CustomText(
        text: title,
        corText: Colors.white,
        fontSize: 17,
      ),
      onPressed: () {
        inTheatersStore.setPage(page);
      },
    ),
  );
}
