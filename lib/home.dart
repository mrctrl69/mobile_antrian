import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:home_ui/account.dart';
import 'package:home_ui/header.dart';
import 'package:home_ui/isikategorikepolisian.dart';
import 'package:home_ui/isisimpoldabali.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<String> populer = [
    'Dokter Gigi',
    'Dokter THT',
    'Dokter Umum',
    'Dokter Spesialis',
  ];

  List<String> kategori = [
    'Rumah Sakit',
    'Kepolisian',
    'Klinik',
    'Dukcapil',
    'Samsat',
    'Dokter/Bidan',
  ];

  List<String> kategoricon = [
    'ac_unit',
    'access_alarm',
    'accessibility',
    'accessible',
    'account_balance',
    'Dokter/Bidan',
  ];

  final headerstyle = TextStyle(
    color: Colors.pink[200],
    fontFamily: 'Bebas',
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
    letterSpacing: 0.5
  );

  final header2style = TextStyle(
    color: Colors.black,
    fontFamily: 'Bebas',
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
    letterSpacing: 0.5
  );

  String title = "Antri Skuy";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(title),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'ANTRIAN TERAKHIR',
                        style: headerstyle,
                      ),
                    ),
                    Container(
                      height: 150.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: populer.length,
                        itemBuilder: (BuildContext context, int i) {
                          return Column(
                            children: <Widget>[
                              SizedBox(height: 20.0),
                              GestureDetector(
                                onTap: () {
                                  Null;
                                },
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(5.0),
                                      margin: const EdgeInsets.only(left: 5.0),
                                      height: 105.0,
                                      width: 105.0,
                                      child: Material(
                                        borderRadius: BorderRadius.circular(10.0),
                                        shadowColor: Colors.pinkAccent,
                                        color: Colors.white,
                                        elevation: 3.0,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        populer[i],
                                        style: TextStyle(color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'ANTRIAN POPULER',
                        style: headerstyle,
                      ),
                    ),
                    Container(
                      height: 150.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: populer.length,
                        itemBuilder: (BuildContext context, int i) {
                          return Column(
                            children: <Widget>[
                              SizedBox(height: 20.0),
                              GestureDetector(
                                onTap: () {
                                  Null;
                                },
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(5.0),
                                      margin: const EdgeInsets.only(left: 5.0),
                                      height: 105.0,
                                      width: 105.0,
                                      child: Material(
                                        borderRadius: BorderRadius.circular(10.0),
                                        shadowColor: Colors.pinkAccent,
                                        color: Colors.white,
                                        elevation: 3.0,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        populer[i],
                                        style: TextStyle(color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'KATEGORI',
                        style: headerstyle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 25),
                      child: GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: kategori.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3
                        ),
                        itemBuilder: (BuildContext context, int i) {
                          return Column(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  height: 105.0,
                                  width: 105.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    shadowColor: Colors.pinkAccent,
                                    color: Colors.white,
                                    elevation: 3.0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    IsiSimPoldaBali()));
                                      },
                                      child: Icon(Icons.account_box),
                                    ),
                                  ),
                                ),
                              ),
                              Text(kategori[i])
                            ],
                          );
                        },
                      ),
                    )
                  ]
                )
              ),
        )
      );
  }
}
