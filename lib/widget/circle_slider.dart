import 'package:flutter/material.dart';
import 'package:netflix/model/model_movie.dart';

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
              children: makeCircleImages(movies),
            ),
          )
        ],
      )
    );
  }

}

List<Widget> makeCircleImages(List<Movie> movies) {
  List<Widget> results = [];
  for(int i = 0; i < movies.length; i++) {
    results.add(InkWell(
      onTap: () {},
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