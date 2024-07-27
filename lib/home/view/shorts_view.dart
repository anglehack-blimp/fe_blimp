import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShortsView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
     return _ShortsView();
  }

}

class _ShortsView extends State<ShortsView> {
  List<String> items = [
    "Stream 1",
    "Stream 1",
    "Stream 1",
    "Stream 1",
    "Stream 1",
    "Stream 1",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 90,
            color: Colors.red,
          ),
          Padding(padding: EdgeInsets.all(4.0)),
          Container(
            width: 90,
            color: Colors.blue,
          ),
          Padding(padding: EdgeInsets.all(4.0)),
          Container(
            width: 90,
            color: Colors.green,
          ),
          Padding(padding: EdgeInsets.all(4.0)),
          Container(
            width: 90,
            color: Colors.yellow,
          ),
          Padding(padding: EdgeInsets.all(4.0)),
          Container(
            width: 90,
            color: Colors.orange,
          ),
          Padding(padding: EdgeInsets.all(4.0)),
        ],
      ),
    );
  }

}