import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/screens/search/components/result_search_details.dart';
import 'package:ifilms/stores/search_store.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();
  final SearchStore _searchStore = GetIt.I<SearchStore>();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      cursorColor: Colors.red,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 0.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 0.5),
        ),
        hintText: 'Pesquise filmes ou series...',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
        suffixIcon: IconButton(
          icon: Icon(Icons.search),
          color: Colors.red,
          iconSize: 30,
          onPressed: () async {
            print(textEditingController.text);
            await _searchStore.fetchQuery(textEditingController.text);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ResultSearchDetails(
                  titleGenre: textEditingController.text,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
