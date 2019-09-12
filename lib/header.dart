import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

Widget header(title) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.0,
    title: Text(
      title,
      style: TextStyle(
        color: Colors.red,
        // fontWeight: FontWeight.
        fontSize: 30
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        tooltip: "Cari",
        color: Colors.red,
        onPressed: () {},
      ),
    ],
  );
}