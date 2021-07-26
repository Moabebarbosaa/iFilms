import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/components/circular_progress.dart';
import 'package:ifilms/components/custom_text.dart';
import 'package:ifilms/stores/serie_detail_store.dart';

class CustomSerieTabSeasons extends StatelessWidget {
  final SerieDetailStore _serieController = GetIt.I<SerieDetailStore>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(
            height: 30,
            child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: _serieController.serieModel.seasons.length,
                itemBuilder: (context, index) {
                  return Observer(builder: (_) {
                    return GestureDetector(
                      child: Row(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomText(
                                text: 'Temporada ${index + 1}',
                                corText: _serieController.page == index
                                    ? Colors.white
                                    : Colors.grey,
                                fontSize: 17,
                                fontWeight: _serieController.page == index
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 3,
                                width: 100,
                                color: _serieController.page == index
                                    ? Color(0xFFE21938)
                                    : Colors.transparent,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      onTap: () {
                        _serieController.loadSeasons(
                            _serieController.serieModel.id, index + 1);
                        _serieController.setPage(index);
                      },
                    );
                  });
                }),
          ),
          Observer(builder: (_) {
            return _showDetailsSeasons(context);
          })
        ],
      ),
    );
  }

  Widget _showDetailsSeasons(BuildContext context) {
    if (_serieController.loadingSeasons) {
      return CircularProgress();
    } else {
      return ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: _serieController.seasonsEpisodeModel.episodes.length,
          itemBuilder: (context, index) {
            final ep = _serieController.seasonsEpisodeModel.episodes[index];
            return Card(
                color: Color(0xFF12151D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ExpansionTile(
                    iconColor: Colors.white,
                    title: CustomText(
                      text: '${index + 1}. ${ep.name}',
                      corText: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            height: 150,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: ep.stillPath == null
                                      ? AssetImage('images/em_breve.png')
                                      : NetworkImage(
                                          'https://image.tmdb.org/t/p/w500/' +
                                              ep.stillPath,
                                        ),
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: CustomText(
                              text: ep.overview == ''
                                  ? 'Em breve...'
                                  : ep.overview,
                              corText: Colors.white,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ));
          });
    }
  }
}
