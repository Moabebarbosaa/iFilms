import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/stores/in_theaters_store.dart';
import 'package:ifilms/stores/search_store.dart';

class GenreButtons extends StatelessWidget {
  final SearchStore _searchStore = GetIt.I<SearchStore>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Observer(builder: (_) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildButton(title: 'Filmes', page: 0, searchStore: _searchStore),
            SizedBox(width: 10),
            _buildButton(title: 'Séries', page: 1, searchStore: _searchStore),
          ],
        );
      }),
    );
  }
}

Widget _buildButton({String title, int page, SearchStore searchStore}) {
  return Expanded(
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            searchStore.page == page ? Colors.red : Colors.grey),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: CustomText(
        text: title,
        corText: Colors.white,
        fontSize: 17,
      ),
      onPressed: () {
        searchStore.setPage(page);
      },
    ),
  );
}
