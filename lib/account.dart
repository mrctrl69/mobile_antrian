import 'package:flutter/material.dart';
import 'package:home_ui/riwayatantrian.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
    fontSize: 20.0,
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

class _MyHomePageState extends State<AccountPage> {
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
          title: Text(
        'Akun',
        style: headerAppBarstyle,
      )),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(bottom: 30.0),
                child: Column(children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                    margin: new EdgeInsets.only(top: 20.0, bottom: 5.0),
                    height: 120.0,
                    child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        shadowColor: Colors.pinkAccent,
                        color: Colors.white,
                        elevation: 7.0,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2, // 20%
                              child: Container(
                                margin: EdgeInsets.only(top: 10.0),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset('assets/img/miloz.jpeg',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.fitHeight),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3, // 60%
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          margin: new EdgeInsets.only(
                                              top: 5.0, bottom: 10.0),
                                          child: Text(
                                            'Bambank Miloz',
                                            style: normalstyle,
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Text(
                                          'bambank@gmail.com',
                                          style: italicstyle,
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          '+62 aja dulu bozku',
                                          style: italicstyle,
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          'alamatnya masih misteri ya',
                                          style: italicstyle,
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          'Ini bingung mau ngasi apa',
                                          style: italicstyle,
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ])),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: 100.0,
                        width: 100.0,
                        child: RaisedButton(
                          color: Colors.pink[100],
                          child: Text(
                            'Riwayat Antrian',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RiwayatAntrian()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: 100.0,
                        width: 100.0,
                        child: RaisedButton(
                            color: Colors.grey,
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'Pengaturan Akun',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => RiwayatAntrian()));
                            }),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
