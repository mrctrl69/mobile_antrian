import 'package:flutter/material.dart';
import 'package:home_ui/isisimpolresdenpasar.dart';
import 'package:home_ui/style.dart';
import 'isisimpolresdenpasar.dart';

class IsiPolresDenpasar extends StatefulWidget {
  IsiPolresDenpasar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<IsiPolresDenpasar> {
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
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 50.0),
                child: Material(
                  // borderRadius: BorderRadius.circular(10.0),
                  shadowColor: Colors.pinkAccent,
                  color: Colors.white,
                  child: GestureDetector(
                    onTap: () {
                      null;
                    },
                    child: Container(
                      // margin: new EdgeInsets.symmetric(
                      //     horizontal: 5.0, vertical: 15.0),
                      child: Image.asset(
                          'assets/img/kepolisian/polres denpasar.jpeg',
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
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
                            color: Colors.black,
                            child: Text(
                              'Pelayanan SIM',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.yellow),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => IsiSimPolresDenpasar(title: 'Pelayanan SIM')));
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
                            color: Colors.black,
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'Pelayanan SKCK',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.yellow),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
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
                            color: Colors.black,
                            child: Text(
                              'Pelayanan Tilang',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.yellow),
                            ),
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
                            color: Colors.black,
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'Pelayanan Pengaduan Masyarakat',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.yellow),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Text('Tentang:'),
                    Text('deskripsi singkat Polresta Denpasar')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
