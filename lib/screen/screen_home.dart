import 'package:flutter/material.dart';
import 'package:netflix/widget/box_slider.dart';
import 'package:netflix/widget/carousel_slider.dart';
import 'package:netflix/widget/circle_slider.dart';
import '../model/model_movie.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Movie> movies = [
    Movie.fromMap(
      {
      'title': '라라랜드',
      'keyword': '/사랑/로맨스',
      'poster': 'lalaland.jpeg',
      'like': false
      }
    ),
    Movie.fromMap(
      {
      'title': '어바웃타임',
      'keyword': '/사랑/로맨스/판타지',
      'poster': 'abouttime.jpeg',
      'like': false
      }
    ),
    Movie.fromMap(
      {
      'title': '노트북',
      'keyword': '/사랑/로맨스',
      'poster': 'notebook.jpeg',
      'like': false
      }
    ),
    Movie.fromMap(
      {
      'title': '꽃다발같은 사랑을 했다',
      'keyword': '/사랑/로맨스',
      'poster': 'flower.jpeg',
      'like': false
      }
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies),
        BoxSlider(movies: movies),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset('assets/img/logo.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: const EdgeInsets.only(right: 1),
            child: const Text('TV 프로그램',
              style: TextStyle(fontSize: 14)),
          ),
          Container(
            padding: const EdgeInsets.only(right: 1),
            child: const Text('영화',
              style: TextStyle(fontSize: 14)),
          ),
          Container(
            padding: const EdgeInsets.only(right: 1),
            child: const Text('내가 찜한 콘텐츠',
              style: TextStyle(fontSize: 14)),
          ),
        ],
      )
    );
  }
}