import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RiwayatAntrian extends StatefulWidget {
  RiwayatAntrian({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<RiwayatAntrian> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final headerstyle = TextStyle(
      color: Colors.pink[200],
      fontFamily: 'Bebas',
      fontWeight: FontWeight.bold,
      fontSize: 28.0,
      letterSpacing: 1);

  final normalstyle = TextStyle(
      color: Colors.black,
      fontFamily: 'Bebas',
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
      letterSpacing: 1);

  final italicstyle = TextStyle(
      color: Colors.grey,
      fontFamily: 'Roboto',
      fontStyle: FontStyle.italic,
      fontSize: 10.0,
      letterSpacing: 0.5);

  final headerAppBarstyle = TextStyle(
      color: Colors.white,
      fontFamily: 'Bebas',
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
      letterSpacing: 1);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: Text(
          'Riwayat Antrian',
          style: headerAppBarstyle,
        )),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                    margin: new EdgeInsets.only(top: 20.0, bottom: 5.0),
                    height: 120.0,
                    child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        shadowColor: Colors.pinkAccent,
                        color: Colors.white,
                        elevation: 7.0,
                        // child: GestureDetector(
                        //   onTap: (){
                        //     Navigator.pushNamed(context, routeName)
                        //   },
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2, // 20%
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    IconButton(
                                      iconSize: 30.0,
                                      icon: Icon(Icons.person),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8, // 60%
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Lokasi Antrian',
                                          style: normalstyle,
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          'Alamat Antrian',
                                          style: italicstyle,
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 30.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'Antrian : 000',
                                          style: headerstyle,
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
          ],
        )));
  }
}
