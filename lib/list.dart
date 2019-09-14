import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:home_ui/home.dart';
import 'package:home_ui/style.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ListPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(
          widget.title,
        ),
        body: Container(
          height: 600,
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                      margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
                      height: 120.0,
                      child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          shadowColor: Colors.redAccent,
                          color: Colors.white,
                          elevation: 7.0,
                          // child: GestureDetector(
                          //   onTap: (){
                          //     Navigator.pushNamed(context, routeName)
                          //   },
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 50.0),
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
                                            'Polda Bali',
                                            style: heading2(),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            'Pembuatan SKCK',
                                            style: miringstyle(),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 25.0),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            'Antrian : 000',
                                            style: antrian(),
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
              Container(
                margin: EdgeInsets.only(top: 35.0),
                child: Text(
                  '-----   Riwayat Antri   -----',
                  style: heading3(),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                      margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
                      height: 120.0,
                      child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          shadowColor: Colors.redAccent,
                          color: Colors.white,
                          elevation: 7.0,
                          // child: GestureDetector(
                          //   onTap: (){
                          //     Navigator.pushNamed(context, routeName)
                          //   },
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 50.0),
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
                                            'Polda Bali',
                                            style: heading2(),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            'Pembuatan SKCK',
                                            style: miringstyle(),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 25.0),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            'Antrian : 000',
                                            style: antrian(),
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
          )),
        ));
  }
}
