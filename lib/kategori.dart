import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:home_ui/style.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CategoryPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'DOKTER',
              style: heading1(),
            ),
          ),
          // actions: <Widget>[
          //   // action button
          //   IconButton(
          //     icon: Icon(Icons.person),
          //     onPressed: () {},
          //   ),
          // ],
        ),
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              new Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Antrian Dokter :',
                  style: heading1(),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[],
                ),
              ),
              new Container(
                child: Column(
                  children: <Widget>[
                    new Container(
                      child: Row(
                        children: <Widget>[
                          new SizedBox(height: 20.0),
                          Container(
                            padding: EdgeInsets.all(5.0),
                            height: 120.0,
                            width: 120.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(10.0),
                              shadowColor: Colors.pinkAccent,
                              color: Colors.white,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/homepage');
                                },
                                child: Center(
                                  child: Text(
                                    'Dokter Gigi',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          new SizedBox(height: 20.0),
                          Container(
                            padding: EdgeInsets.all(5.0),
                            height: 120.0,
                            width: 120.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(10.0),
                              shadowColor: Colors.pinkAccent,
                              color: Colors.white,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {
                                  Null;
                                },
                                child: Center(
                                  child: Text(
                                    'Dokter THT',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          new SizedBox(height: 20.0),
                          Container(
                            padding: EdgeInsets.all(5.0),
                            height: 120.0,
                            width: 120.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(10.0),
                              shadowColor: Colors.pinkAccent,
                              color: Colors.white,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {
                                  Null;
                                },
                                child: Center(
                                  child: Text(
                                    'Dokter Umum',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      height: 125.0,
                      child: Row(
                        children: <Widget>[
                          new Container(
                            child: Row(
                              children: <Widget>[
                                new SizedBox(height: 20.0),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  height: 120.0,
                                  width: 120.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(10.0),
                                    shadowColor: Colors.pinkAccent,
                                    color: Colors.white,
                                    elevation: 7.0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Null;
                                      },
                                      child: Center(
                                        child: Text(
                                          'Dokter Kulit',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                new SizedBox(height: 20.0),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  height: 120.0,
                                  width: 120.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(10.0),
                                    shadowColor: Colors.pinkAccent,
                                    color: Colors.white,
                                    elevation: 7.0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Null;
                                      },
                                      child: Center(
                                        child: Text(
                                          'Dokter Bedah Rumah',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Roboto'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                new SizedBox(height: 20.0),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  height: 120.0,
                                  width: 120.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(10.0),
                                    shadowColor: Colors.pinkAccent,
                                    color: Colors.white,
                                    elevation: 7.0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Null;
                                      },
                                      child: Center(
                                        child: Text(
                                          'Dokter Kandungan',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Roboto'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ])));
  }
}
