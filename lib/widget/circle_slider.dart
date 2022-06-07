import 'package:flutter/material.dart';
import 'package:netflix/model/model_movie.dart';

import '../screen/screen_detail.dart';

class CircleSlider extends StatelessWidget {
  final List<Movie> movies;
  CircleSlider({required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('미리보기'),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeCircleImages(context, movies),
            ),
          )
        ],
      )
    );
  }

}

List<Widget> makeCircleImages(BuildContext context, List<Movie> movies) {
  List<Widget> results = [];
  for(int i = 0; i < movies.length; i++) {
    results.add(InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute<Null>(
          fullscreenDialog: true,
          builder: (BuildContext context) {
            return DetailScreen(movie: movies[i],
            );
          }
        ));
      },
      child: Container(
        padding: EdgeInsets.only(right: 10),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/img/' + movies[i].poster),
          radius: 48,
        )
      )
    ));
  }

  return results;
}