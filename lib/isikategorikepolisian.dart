import 'package:flutter/material.dart';
import 'package:home_ui/isipoldabali.dart';
import 'package:home_ui/isipolredenpasar.dart';
import 'package:home_ui/style.dart';

class IsiKategoriKepolisian extends StatefulWidget {
  IsiKategoriKepolisian({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<IsiKategoriKepolisian> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(widget.title),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 15.0, left: 15.0, bottom: 25.0),
                child: Text(
                  'Lokasi :',
                  style: heading1(),
                ),
              ),
              Container(
                height: 125.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
                      padding: EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Image.asset('assets/img/kepolisian/polda bali.png',
                          width: 100.0, height: 100.0, fit: BoxFit.fitHeight),
                    ),
                    Container(
                      width: 150.0,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: RaisedButton(
                        color: Colors.black,
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'POLDA BALI',
                          style: TextStyle(color: Colors.yellow),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      IsiPoldaBali(title: 'Polda Bali',)));
                        },
                      ),
                    )
                  ],
                ),
              ),

              Container(
                height: 125.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
                      padding: EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Image.asset('assets/img/kepolisian/polres denpasar.jpeg',
                          width: 100.0, height: 100.0, fit: BoxFit.fitHeight),
                    ),
                    Container(
                      width: 150.0,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: RaisedButton(
                        color: Colors.black,
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'POLRES DENPASAR',
                          style: TextStyle(color: Colors.yellow),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      IsiPolresDenpasar(title: 'Polresta Denpasar')));
                        },
                      ),
                    )
                  ],
                ),
              ),

              Container(
                height: 125.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
                      padding: EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Image.asset('assets/img/kepolisian/polres badung.jfif',
                          width: 100.0, height: 100.0, fit: BoxFit.fitHeight),
                    ),
                    Container(
                      width: 150.0,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: RaisedButton(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'POLRES BADUNG',
                          style: TextStyle(color: Colors.yellow),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                height: 125.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
                      padding: EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Image.asset('assets/img/kepolisian/polres tabanan.jfif',
                          width: 100.0, height: 100.0, fit: BoxFit.fitHeight),
                    ),
                    Container(
                      width: 150.0,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: RaisedButton(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'POLRES TABANAN',
                          style: TextStyle(color: Colors.yellow),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                height: 125.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
                      padding: EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Image.asset('assets/img/kepolisian/polres karangasem.png',
                          width: 100.0, height: 100.0, fit: BoxFit.fitHeight),
                    ),
                    Container(
                      width: 150.0,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: RaisedButton(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'POLRES KARANGASEM',
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
        ),
      ),
    );
  }
}
