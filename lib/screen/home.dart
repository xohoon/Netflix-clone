import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TopBar();
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