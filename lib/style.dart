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
          fontSize: 30),
    ),
  );
}

Widget search(title) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.0,
    title: Text(
      title,
      style: TextStyle(
          color: Colors.red,
          // fontWeight: FontWeight.
          fontSize: 30),
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

heading1() {
  return TextStyle(
      color: Colors.red[200],
      fontFamily: 'Lato',
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
      letterSpacing: 0.5);
}

heading2() {
  return TextStyle(
      color: Colors.black,
      fontFamily: 'Lato',
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
      letterSpacing: 0.5);
}

heading3() {
  return TextStyle(
      color: Colors.redAccent,
      fontFamily: 'Lato',
      fontStyle: FontStyle.italic,
      fontSize: 20.0,
      letterSpacing: 0.5);
}

antrian() {
  return TextStyle(
      color: Colors.red,
      fontFamily: 'Lato',
      fontWeight: FontWeight.bold,
      fontSize: 28.0,
      letterSpacing: 0.5);
}

normalstyle() {
  TextStyle(
      color: Colors.red,
      fontFamily: 'Lato',
      fontSize: 16.0,
      letterSpacing: 0.5);
}

miringstyle() {
  TextStyle(
      color: Colors.grey,
      fontFamily: 'Lato',
      fontStyle: FontStyle.italic,
      fontSize: 14.0,
      letterSpacing: 0.5);
}

tebalstyle() {
  TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.bold,
      fontFamily: 'Lato',
      fontSize: 16.0,
      letterSpacing: 0.5);
}

headerAppBarstyle() {
  TextStyle(
      color: Colors.white,
      fontFamily: 'Lato',
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
      letterSpacing: 1);
}
